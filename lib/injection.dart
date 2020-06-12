import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.iconfig.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}

mixin AutoResetLazySingleton<E, S> on Bloc<E, S> {
  @override
  Future<void> close() {
    if (getIt.isRegistered<Bloc<E, S>>(instance: this)) {
      getIt.resetLazySingleton<Bloc<E, S>>(instance: this);
    }
    return super.close();
  }
}
