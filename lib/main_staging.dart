import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_portfolio/app/app.dart';
import 'package:flutter_portfolio/app/app_bloc_observer.dart';

import 'app/config/configure_nonweb.dart'
    if (dart.library.html) 'app/config/configure_web.dart';

void main() {
  configureApp();
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(const App()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
