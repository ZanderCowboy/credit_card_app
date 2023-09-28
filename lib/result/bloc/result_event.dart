part of 'result_bloc.dart';

@freezed
sealed class ResultEvent with _$ResultEvent {
  const factory ResultEvent.onFinish() = onFinish;
  const factory ResultEvent.onCancel() = onCancel;
}
