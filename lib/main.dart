import 'package:credit_card_app/application/app.dart';
import 'package:credit_card_app/data/persistance/db_driver.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await DbDriver().driver();
  WidgetsFlutterBinding.ensureInitialized();
  configureCoreDependencies();
  Bloc.observer = const SimpleBlocObserver();

  runApp(
    const App(),
  );
}
