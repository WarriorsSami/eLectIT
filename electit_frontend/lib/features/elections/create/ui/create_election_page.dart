import 'package:auto_route/auto_route.dart';
import 'package:electit_frontend/features/elections/create/bloc/candidate_group_field_bloc.dart';
import 'package:electit_frontend/features/elections/create/bloc/create_election_wizard_form_bloc.dart';
import 'package:electit_frontend/features/elections/create/ui/components/candidate_card.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/config/di.dart';
import 'package:electit_frontend/features/shared/config/router.gr.dart';
import 'package:electit_frontend/features/shared/ui/components/app_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

@RoutePage()
class CreateElectionPage extends StatefulWidget {
  const CreateElectionPage({super.key});

  @override
  State<CreateElectionPage> createState() => _CreateElectionPageState();
}

class _CreateElectionPageState extends State<CreateElectionPage> {
  var _stepperOrientation = StepperType.horizontal;

  void _toggleStepperOrientation() {
    setState(() {
      _stepperOrientation = _stepperOrientation == StepperType.horizontal
          ? StepperType.vertical
          : StepperType.horizontal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<CreateElectionWizardFormBloc>(),
      child: Builder(
        builder: (context) {
          return Theme(
            data: Theme.of(context).copyWith(
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                title: const Text(
                  Constants.createElectionPageTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: <Widget>[
                  IconButton(
                      icon: Icon(_stepperOrientation == StepperType.horizontal
                          ? Icons.swap_vert
                          : Icons.swap_horiz),
                      onPressed: _toggleStepperOrientation)
                ],
              ),
              body: SafeArea(
                child: FormBlocListener<CreateElectionWizardFormBloc, String,
                    String>(
                  onSubmitting: (context, state) => AppDialog.show(context),
                  onSubmissionFailed: (context, state) =>
                      AppDialog.hide(context),
                  onSuccess: (context, state) {
                    AppDialog.hide(context);

                    if (state.stepCompleted == state.lastStep) {
                      context.router.navigate(const DashboardRoute());
                    }
                  },
                  onFailure: (context, state) {
                    AppDialog.hide(context);

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          state.failureResponse!,
                        ),
                      ),
                    );
                  },
                  child: StepperFormBlocBuilder<CreateElectionWizardFormBloc>(
                    formBloc: context.read<CreateElectionWizardFormBloc>(),
                    type: _stepperOrientation,
                    physics: const ClampingScrollPhysics(),
                    stepsBuilder: (formBloc) {
                      return [
                        _electionStep(formBloc!),
                        _candidatesStep(formBloc),
                      ];
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  FormBlocStep _electionStep(CreateElectionWizardFormBloc formBloc) {
    return FormBlocStep(
      title: const Text(Constants.electionStepTitle),
      content: SizedBox(
        height: MediaQuery.of(context).size.height / Constants.largeHeightRatio,
        child: Column(
          children: [
            Flexible(
              child: TextFieldBlocBuilder(
                textFieldBloc: formBloc.title,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: Constants.electionTitleLabel,
                  prefixIcon: const Icon(Icons.title),
                ),
              ),
            ),
            Flexible(
              child: TextFieldBlocBuilder(
                textFieldBloc: formBloc.description,
                keyboardType: TextInputType.text,
                maxLines: 6,
                decoration: InputDecoration(
                  labelText: Constants.electionDescriptionLabel,
                  prefixIcon: const Icon(Icons.description),
                ),
              ),
            ),
            Flexible(
              child: DateTimeFieldBlocBuilder(
                dateTimeFieldBloc: formBloc.startDateTime,
                canSelectTime: true,
                format: DateFormat('dd-MM-yyyy HH:mm'),
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2100),
                decoration: InputDecoration(
                  labelText: Constants.electionStartDateTimeLabel,
                  prefixIcon: const Icon(Icons.date_range),
                ),
              ),
            ),
            Flexible(
              child: DateTimeFieldBlocBuilder(
                dateTimeFieldBloc: formBloc.endDateTime,
                canSelectTime: true,
                format: DateFormat('dd-MM-yyyy HH:mm'),
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2100),
                decoration: InputDecoration(
                  labelText: Constants.electionEndDateTimeLabel,
                  prefixIcon: const Icon(Icons.date_range),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  FormBlocStep _candidatesStep(CreateElectionWizardFormBloc formBloc) {
    return FormBlocStep(
      title: const Text(Constants.candidatesStepTitle),
      content: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<ListFieldBloc<CandidateFieldBloc, dynamic>,
                ListFieldBlocState<CandidateFieldBloc, dynamic>>(
              bloc: formBloc.candidates,
              builder: (context, state) {
                if (state.fieldBlocs.isNotEmpty) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height /
                        Constants.largeHeightRatio,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.fieldBlocs.length,
                      itemBuilder: (context, index) => CandidateCard(
                        candidateIndex: index,
                        candidateField: state.fieldBlocs[index],
                        onRemoveCandidate: () {
                          formBloc.removeCandidate(index);
                        },
                      ),
                    ),
                  );
                }
                return const Center(
                  child: Text('No candidates added yet'),
                );
              },
            ),
            smallVerticalSpace,
            ElevatedButton(
              onPressed: () {
                formBloc.addCandidate();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
              child: const Text(Constants.addCandidateButtonLabel),
            ),
          ],
        ),
      ),
    );
  }
}
