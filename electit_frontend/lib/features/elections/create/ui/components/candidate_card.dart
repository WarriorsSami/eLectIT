import 'package:electit_frontend/features/elections/create/bloc/candidate_group_field_bloc.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class CandidateCard extends StatelessWidget {
  final int candidateIndex;
  final CandidateFieldBloc candidateField;
  final VoidCallback onRemoveCandidate;

  const CandidateCard({
    required this.candidateIndex,
    required this.candidateField,
    required this.onRemoveCandidate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: mediumPadding,
        child: SizedBox(
          height: MediaQuery.of(context).size.height /
              Constants.mediumHeightRatio *
              1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        'Candidate ${candidateIndex + 1}',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Flexible(
                      child: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: Constants.iconSize,
                        ),
                        onPressed: onRemoveCandidate,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: TextFieldBlocBuilder(
                  textFieldBloc: candidateField.candidateName,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: Constants.candidateNameLabel,
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Flexible(
                child: TextFieldBlocBuilder(
                  textFieldBloc: candidateField.candidateParty,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: Constants.candidatePartyLabel,
                    prefixIcon: Icon(Icons.flag),
                  ),
                ),
              ),
              Flexible(
                child: TextFieldBlocBuilder(
                  textFieldBloc: candidateField.candidateManifesto,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: Constants.candidateManifestoLabel,
                    prefixIcon: Icon(Icons.description),
                  ),
                ),
              ),
              Flexible(
                child: TextFieldBlocBuilder(
                  textFieldBloc: candidateField.candidateImageUrl,
                  keyboardType: TextInputType.url,
                  decoration: const InputDecoration(
                    labelText: Constants.candidateImageUrlLabel,
                    prefixIcon: Icon(Icons.image),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
