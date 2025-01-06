import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class CandidateFieldBloc extends GroupFieldBloc {
  final TextFieldBloc candidateName;
  final TextFieldBloc candidateParty;
  final TextFieldBloc candidateManifesto;
  final TextFieldBloc candidateImageUrl;

  CandidateFieldBloc({
    required this.candidateName,
    required this.candidateParty,
    required this.candidateManifesto,
    required this.candidateImageUrl,
  }) : super(
          fieldBlocs: [
            candidateName
              ..addValidators([
                FieldBlocValidators.required,
                _validateCandidateName,
              ]),
            candidateParty
              ..addValidators([
                FieldBlocValidators.required,
                _validateCandidateParty,
              ]),
            candidateManifesto
              ..addValidators([
                FieldBlocValidators.required,
                _validateCandidateManifesto,
              ]),
            candidateImageUrl
              ..addValidators([
                _validateCandidateImageUrl,
              ]),
          ],
        );

  static String? _validateCandidateName(String? candidateName) {
    if (Constants.candidateNameMinLength > candidateName!.length ||
        candidateName.length > Constants.candidateNameMaxLength) {
      return Constants.candidateNameLengthErrorMessage;
    }
    return null;
  }

  static String? _validateCandidateParty(String? candidateParty) {
    if (Constants.candidatePartyMinLength > candidateParty!.length ||
        candidateParty.length > Constants.candidatePartyMaxLength) {
      return Constants.candidatePartyLengthErrorMessage;
    }
    return null;
  }

  static String? _validateCandidateManifesto(String? candidateManifesto) {
    if (Constants.candidateManifestoMinLength > candidateManifesto!.length ||
        candidateManifesto.length > Constants.candidateManifestoMaxLength) {
      return Constants.candidateManifestoLengthErrorMessage;
    }
    return null;
  }

  static String? _validateCandidateImageUrl(String? candidateImageUrl) {
    if (!RegExp(Constants.candidatePictureUrlRegex)
        .hasMatch(candidateImageUrl!)) {
      return Constants.candidatePictureUrlErrorMessage;
    }
    return null;
  }
}
