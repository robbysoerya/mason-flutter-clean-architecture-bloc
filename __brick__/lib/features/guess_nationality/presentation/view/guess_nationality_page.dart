import 'package:{{project_name}}/core/core.dart';
import 'package:{{project_name}}/features/guess_nationality/guess_nationality.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GuessNationalityPage extends BasePage {
  const GuessNationalityPage({super.key});

  @override
  BaseState<GuessNationalityPage> createState() => _GuessNationalityPageState();
}

class _GuessNationalityPageState extends BaseState<GuessNationalityPage>
    with BasicPageMixin, ErrorHandlingMixin {
  late GuessNationalityBloc _bloc;
  final _controller = TextEditingController();

  @override
  Widget body() {
    final state = context.watch<GuessNationalityBloc>().state;
    return state.when(
      initial: () => _buildInitial(),
      loading: () => const Center(child: CircularProgressIndicator()),
      empty: () => const Text('Data tidak ditemukan'),
      success: (data) => _buildSuccess(data),
      error: (failure) => errorWidget(failure),
    );
  }

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of(context);
  }

  @override
  String screenName() => Strings.of(context).guessNationalityAppBarTitle;

  Widget _buildSuccess(GuessNationalityEntity entity) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [_buildContent(entity), _buildResetButton()],
      ),
    );
  }

  Widget _buildContent(GuessNationalityEntity entity) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(
        entity.country.length,
        (index) => Text(entity.country[index].countryId),
      ),
    );
  }

  Widget _buildInitial() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildInputName(),
            const SizedBox(height: 16.0),
            _buildGuessButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildInputName() {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: Strings.of(context).guessNationalityHintTextField,
      ),
    );
  }

  Widget _buildGuessButton() {
    return ElevatedButton(
      onPressed: () => _bloc.add(
        GuessNationalityStarted(name: _controller.text),
      ),
      child: Text(Strings.of(context).guessNationalityButtonTitle),
    );
  }

  Widget _buildResetButton() {
    return ElevatedButton(
      onPressed: () => _bloc.add(GuessNationalityReset()),
      child: Text(Strings.of(context).resetButtonTitle),
    );
  }
}
