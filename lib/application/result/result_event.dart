part of 'result_bloc.dart';

/// ResultBloc's events
@freezed
class ResultEvent with _$ResultEvent {
  /// Validate button pressed on ResultPage
  const factory ResultEvent.onPressedValidate() = onPressedValidate;

  /// Submit button pressed on ResultPage
  const factory ResultEvent.onPressedSubmit() = onPressedSubmit;

  /// Cancel button pressed on ResultPage
  const factory ResultEvent.onPressedCancel() = onPressedCancel;
}
