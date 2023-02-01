import 'package:{{project_name}}/core/core.dart';
import 'package:flutter/material.dart';

mixin BasicPageMixin<Page extends BasePage> on BaseState<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screenName()),
      ),
      body: Container(
        color: Colors.white,
        child: body(),
      ),
    );
  }

  Widget body();
}
