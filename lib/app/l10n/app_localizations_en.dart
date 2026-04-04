// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get errorServer => 'Server error occurred';

  @override
  String get errorCache => 'Cache error occurred';

  @override
  String get errorNetwork => 'Network error occurred';

  @override
  String get errorValidation => 'Validation failed';
}
