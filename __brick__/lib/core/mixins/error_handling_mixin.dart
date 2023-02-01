import 'package:{{project_name}}/core/core.dart';
import 'package:flutter/material.dart';

mixin ErrorHandlingMixin<Page extends BasePage> on BaseState<Page> {
  Widget errorWidget(Failure failure) {
    return failure.when(
      server: (message) => _buildServerError(),
      network: (message) => _buildNetworkError(),
      socket: (message) => _buildSocketError(),
    );
  }

  Widget _buildServerError() {
    return Container();
  }

  Widget _buildNetworkError() {
    return Container();
  }

  Widget _buildSocketError() {
    return Container();
  }
}
