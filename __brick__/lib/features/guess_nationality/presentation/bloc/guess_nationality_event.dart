part of 'guess_nationality_bloc.dart';

abstract class GuessNationalityEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GuessNationalityReset extends GuessNationalityEvent {}
class GuessNationalityStarted extends GuessNationalityEvent {
  GuessNationalityStarted({required this.name});
  final String name;

  @override
  List<Object?> get props => [name];
}
