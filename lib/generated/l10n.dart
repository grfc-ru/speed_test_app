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

  /// `Speed test`
  String get app_name {
    return Intl.message(
      'Speed test',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Измеритель скорости`
  String get main_title {
    return Intl.message(
      'Измеритель скорости',
      name: 'main_title',
      desc: '',
      args: [],
    );
  }

  /// `Измеряем`
  String get measuring {
    return Intl.message(
      'Измеряем',
      name: 'measuring',
      desc: '',
      args: [],
    );
  }

  /// `Измерить`
  String get measure {
    return Intl.message(
      'Измерить',
      name: 'measure',
      desc: '',
      args: [],
    );
  }

  /// `Генерируем файл с нагрузкой. Подождите.`
  String get flush_generate {
    return Intl.message(
      'Генерируем файл с нагрузкой. Подождите.',
      name: 'flush_generate',
      desc: '',
      args: [],
    );
  }

  /// `Отсуствуют права у приложения на работу с памятью (хранилищем)`
  String get permission_memory {
    return Intl.message(
      'Отсуствуют права у приложения на работу с памятью (хранилищем)',
      name: 'permission_memory',
      desc: '',
      args: [],
    );
  }

  /// `Не верный класс сети`
  String get error_net_class {
    return Intl.message(
      'Не верный класс сети',
      name: 'error_net_class',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка работы c GSM`
  String get error_gps {
    return Intl.message(
      'Ошибка работы c GSM',
      name: 'error_gps',
      desc: '',
      args: [],
    );
  }

  /// `Отсуствуют права у приложения на работу с GSM (телефон)`
  String get permission_gsm {
    return Intl.message(
      'Отсуствуют права у приложения на работу с GSM (телефон)',
      name: 'permission_gsm',
      desc: '',
      args: [],
    );
  }

  /// `Отсуствуют права у приложения на работу с GPS`
  String get permission_gps {
    return Intl.message(
      'Отсуствуют права у приложения на работу с GPS',
      name: 'permission_gps',
      desc: '',
      args: [],
    );
  }

  /// `Не получилось скачать. Проверьте доступность сервера.`
  String get download_fail {
    return Intl.message(
      'Не получилось скачать. Проверьте доступность сервера.',
      name: 'download_fail',
      desc: '',
      args: [],
    );
  }

  /// `Не получилось отправить. Проверьте доступность сервера.`
  String get upload_fail {
    return Intl.message(
      'Не получилось отправить. Проверьте доступность сервера.',
      name: 'upload_fail',
      desc: '',
      args: [],
    );
  }

  /// `Информация`
  String get info_title {
    return Intl.message(
      'Информация',
      name: 'info_title',
      desc: '',
      args: [],
    );
  }

  /// `https://grfc.ru/`
  String get org_url {
    return Intl.message(
      'https://grfc.ru/',
      name: 'org_url',
      desc: '',
      args: [],
    );
  }

  /// `ФГУП «ГРЧЦ»`
  String get org_title {
    return Intl.message(
      'ФГУП «ГРЧЦ»',
      name: 'org_title',
      desc: '',
      args: [],
    );
  }

  /// `Федеральное государственное унитарное предприятие «Главный радиочастотный центр»`
  String get org_leading {
    return Intl.message(
      'Федеральное государственное унитарное предприятие «Главный радиочастотный центр»',
      name: 'org_leading',
      desc: '',
      args: [],
    );
  }

  /// `телефон`
  String get phone {
    return Intl.message(
      'телефон',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `mailto:k.bulanov@grfc.ru?subject=Мобильное%20приложение&body=Добрый%20день!`
  String get mail_to {
    return Intl.message(
      'mailto:k.bulanov@grfc.ru?subject=Мобильное%20приложение&body=Добрый%20день!',
      name: 'mail_to',
      desc: '',
      args: [],
    );
  }

  /// `электропочта`
  String get email {
    return Intl.message(
      'электропочта',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `версия приложения`
  String get app_version {
    return Intl.message(
      'версия приложения',
      name: 'app_version',
      desc: '',
      args: [],
    );
  }

  /// `Настройки`
  String get settings_title {
    return Intl.message(
      'Настройки',
      name: 'settings_title',
      desc: '',
      args: [],
    );
  }

  /// `Адрес сервера`
  String get settings_server_addr {
    return Intl.message(
      'Адрес сервера',
      name: 'settings_server_addr',
      desc: '',
      args: [],
    );
  }

  /// `Время измерения (сек)`
  String get settings_time_measured {
    return Intl.message(
      'Время измерения (сек)',
      name: 'settings_time_measured',
      desc: '',
      args: [],
    );
  }

  /// `Все`
  String get setting_gsm_type_all {
    return Intl.message(
      'Все',
      name: 'setting_gsm_type_all',
      desc: '',
      args: [],
    );
  }

  /// `Загрузка (Мбит/c)`
  String get speed_download {
    return Intl.message(
      'Загрузка (Мбит/c)',
      name: 'speed_download',
      desc: '',
      args: [],
    );
  }

  /// `Отправка (Мбит/c)`
  String get speed_upload {
    return Intl.message(
      'Отправка (Мбит/c)',
      name: 'speed_upload',
      desc: '',
      args: [],
    );
  }

  /// `Широта`
  String get lat {
    return Intl.message(
      'Широта',
      name: 'lat',
      desc: '',
      args: [],
    );
  }

  /// `Долгота`
  String get lon {
    return Intl.message(
      'Долгота',
      name: 'lon',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get gsm_name {
    return Intl.message(
      'Имя',
      name: 'gsm_name',
      desc: '',
      args: [],
    );
  }

  /// `Код оператора`
  String get gsm_code_op {
    return Intl.message(
      'Код оператора',
      name: 'gsm_code_op',
      desc: '',
      args: [],
    );
  }

  /// `Тип сети`
  String get gsm_type {
    return Intl.message(
      'Тип сети',
      name: 'gsm_type',
      desc: '',
      args: [],
    );
  }

  /// `Класс сети`
  String get gsm_class {
    return Intl.message(
      'Класс сети',
      name: 'gsm_class',
      desc: '',
      args: [],
    );
  }

  /// `Уровень`
  String get gsm_level {
    return Intl.message(
      'Уровень',
      name: 'gsm_level',
      desc: '',
      args: [],
    );
  }

  /// `дБм`
  String get gsm_dbm {
    return Intl.message(
      'дБм',
      name: 'gsm_dbm',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
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
