part of 'result_bloc.dart';

@freezed
class ResultEvent with _$ResultEvent {
  const factory ResultEvent.onValidate() = onValidate;
  const factory ResultEvent.onSubmit() = onSubmit;
  const factory ResultEvent.onCancel() = onCancel;
}
