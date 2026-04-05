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

  @override
  String get errorBadRequest => 'The request was invalid. Please check your input and try again.';

  @override
  String get errorUnauthorized => 'Invalid or missing API key. Please check your configuration.';

  @override
  String get errorRateLimit => 'Too many requests. Please wait a moment and try again.';

  @override
  String get noFavoritesYet => 'No favorites yet';

  @override
  String get searchArticlesHint => 'Search articles…';

  @override
  String get retry => 'Retry';

  @override
  String get categoryGeneral => 'General';

  @override
  String get categoryBusiness => 'Business';

  @override
  String get categoryEntertainment => 'Entertainment';

  @override
  String get categoryHealth => 'Health';

  @override
  String get categoryScience => 'Science';

  @override
  String get categorySports => 'Sports';

  @override
  String get categoryTechnology => 'Technology';
}
