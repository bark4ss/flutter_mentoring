import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class DemoLocalizations {
  DemoLocalizations(this.locale);

  final Locale locale;

  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

  static Map<String, Map<String, String>> _localiezedValues = {
    'en': {
      'title': 'Localization screen App',
      'mainScreenTitle': 'Main screen',
      'secondScreenTitle': 'Second screen',
      'nextScreenTitle': 'Go to the next screen',
      'additionalInfoTitle': 'additional information',
    },
    'es': {
      'title': 'Pantalla de localización App',
      'mainScreenTitle': 'Ventana principal',
      'secondScreenTitle': 'Segunda pantalla',
      'nextScreenTitle': 'Ir a la siguiente pantalla',
      'additionalInfoTitle': 'información adicional',
    },
  };

  String get title {
    return _localiezedValues[locale.languageCode]['title'];
  }

  String get mainScreenTitle {
    return _localiezedValues[locale.languageCode]['mainScreenTitle'];
  }

  String get secondScreenTitle {
    return _localiezedValues[locale.languageCode]['secondScreenTitle'];
  }

  String get nextScreenTitle {
    return _localiezedValues[locale.languageCode]['nextScreenTitle'];
  }

  String get additionalInfoTitle {
    return _localiezedValues[locale.languageCode]['additionalInfoTitle'];
  }

}

class DemoLocalizationsDelegate extends LocalizationsDelegate<DemoLocalizations> {
  const DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<DemoLocalizations> load(Locale locale) => SynchronousFuture<DemoLocalizations>(DemoLocalizations(locale));

  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;
}