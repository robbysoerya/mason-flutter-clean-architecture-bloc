import 'package:{{project_name}}/core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'guess_nationality_event.dart';

class GuessNationalityBloc extends Bloc<GuessNationalityEvent, AppStates> {
  final GetGuessNationalityUsecase usecase;
  GuessNationalityBloc({
    required this.usecase,
  }) : super(const AppStates.initial()) {
    on<GuessNationalityStarted>(_onGuessNationalityStarted);
    on<GuessNationalityReset>(_onGuessNationalityReset);
  }

  void _onGuessNationalityReset(
    GuessNationalityReset event,
    Emitter<AppStates> emit,
  ) {
    emit(const AppStates.initial());
  }

  _onGuessNationalityStarted(
    GuessNationalityStarted event,
    Emitter<AppStates> emit,
  ) async {
    emit(const AppStates.loading());
    final resp = await usecase.execute(event.name);
    final updatedState = resp.fold(
      (failure) => AppStates.error(failure),
      (data) => data.country.isEmpty
          ? const AppStates.empty()
          : AppStates.success(data),
    );
    emit(updatedState);
  }
}
