import 'package:credit_card_app/get_it_injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

/// [GetIt] instance as [coreSl]
final coreSl = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)

/// Initialize [coreSl]
GetIt configureCoreDependencies() => coreSl.init();
