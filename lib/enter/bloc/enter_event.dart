part of 'enter_bloc.dart';

sealed class EnterEvent extends Equatable {
  const EnterEvent();

  @override
  List<Object> get props => [];
}

final class EnterInitial extends EnterEvent {}

final class EnterPressed extends EnterEvent {}

final class EnterSubmit extends EnterEvent {}




