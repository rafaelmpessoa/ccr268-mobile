import 'package:ccr/injection.dart';
import 'package:ccr/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    if (!bool.fromEnvironment('dart.vm.product')) print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (!bool.fromEnvironment('dart.vm.product')) print(transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    if (!bool.fromEnvironment('dart.vm.product')) print(error);
  }
}

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  configureInjection(bool.fromEnvironment('dart.vm.product') == true
      ? Environment.prod
      : Environment.dev);

  runApp(
    MyApp(),
  );
}
