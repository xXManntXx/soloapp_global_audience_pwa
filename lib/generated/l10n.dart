// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Global audience app`
  String get mainTitle {
    return Intl.message(
      'Global audience app',
      name: 'mainTitle',
      desc: 'Name of the app',
      args: [],
    );
  }

  /// `Pick your language.`
  String get drawerHeader {
    return Intl.message(
      'Pick your language.',
      name: 'drawerHeader',
      desc: 'Invitation to choose language.',
      args: [],
    );
  }

  /// `Countryside`
  String get section1 {
    return Intl.message(
      'Countryside',
      name: 'section1',
      desc: 'First category',
      args: [],
    );
  }

  /// `Dwelling`
  String get section2 {
    return Intl.message(
      'Dwelling',
      name: 'section2',
      desc: 'Second category',
      args: [],
    );
  }

  /// `Activities`
  String get section3 {
    return Intl.message(
      'Activities',
      name: 'section3',
      desc: 'Third category',
      args: [],
    );
  }

  /// `Glacier`
  String get titre1 {
    return Intl.message(
      'Glacier',
      name: 'titre1',
      desc: 'First panel title',
      args: [],
    );
  }

  /// `Forest`
  String get titre2 {
    return Intl.message(
      'Forest',
      name: 'titre2',
      desc: 'Second panel title',
      args: [],
    );
  }

  /// `Mountain`
  String get titre3 {
    return Intl.message(
      'Mountain',
      name: 'titre3',
      desc: 'Third panel title',
      args: [],
    );
  }

  /// `Lowland`
  String get titre4 {
    return Intl.message(
      'Lowland',
      name: 'titre4',
      desc: 'Fourth panel title',
      args: [],
    );
  }

  /// `A magnificent glacier in the heart of the Alps`
  String get description1 {
    return Intl.message(
      'A magnificent glacier in the heart of the Alps',
      name: 'description1',
      desc: 'First panel description',
      args: [],
    );
  }

  /// `An enchanting forest with a thousand mysteries.`
  String get description2 {
    return Intl.message(
      'An enchanting forest with a thousand mysteries.',
      name: 'description2',
      desc: 'Second panel description',
      args: [],
    );
  }

  /// `A plateau surrounded by snow-capped mountains.`
  String get description3 {
    return Intl.message(
      'A plateau surrounded by snow-capped mountains.',
      name: 'description3',
      desc: 'Third panel description',
      args: [],
    );
  }

  /// `A solitary tree in the middle of the plains.`
  String get description4 {
    return Intl.message(
      'A solitary tree in the middle of the plains.',
      name: 'description4',
      desc: 'Fourth panel description',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'he'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
