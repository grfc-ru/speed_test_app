// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "app_name": MessageLookupByLibrary.simpleMessage("GSMSpeed"),
        "app_version":
            MessageLookupByLibrary.simpleMessage("версия приложения"),
        "db_save_fail": MessageLookupByLibrary.simpleMessage(
            "Не получилось сохранить в базу"),
        "download_fail": MessageLookupByLibrary.simpleMessage(
            "Не получилось скачать. Проверьте доступность сервера."),
        "email": MessageLookupByLibrary.simpleMessage("электропочта"),
        "error_gps":
            MessageLookupByLibrary.simpleMessage("Ошибка работы c GSM"),
        "error_net_class":
            MessageLookupByLibrary.simpleMessage("Не верный класс сети"),
        "flush_generate": MessageLookupByLibrary.simpleMessage(
            "Генерируем файл с нагрузкой. Подождите."),
        "gsm_class": MessageLookupByLibrary.simpleMessage("Класс сети"),
        "gsm_code_net": MessageLookupByLibrary.simpleMessage("Код сети"),
        "gsm_code_op": MessageLookupByLibrary.simpleMessage("Код оператора"),
        "gsm_dbm": MessageLookupByLibrary.simpleMessage("дБм"),
        "gsm_level": MessageLookupByLibrary.simpleMessage("Уровень"),
        "gsm_name": MessageLookupByLibrary.simpleMessage("Имя"),
        "gsm_type": MessageLookupByLibrary.simpleMessage("Тип сети"),
        "info_title": MessageLookupByLibrary.simpleMessage("Информация"),
        "lat": MessageLookupByLibrary.simpleMessage("Широта"),
        "lon": MessageLookupByLibrary.simpleMessage("Долгота"),
        "mail_to": MessageLookupByLibrary.simpleMessage(
            "mailto:k.bulanov@grfc.ru?subject=Мобильное%20приложение&body=Добрый%20день!"),
        "main_title":
            MessageLookupByLibrary.simpleMessage("Измеритель скорости GSM"),
        "measure": MessageLookupByLibrary.simpleMessage("Измерить"),
        "measuring": MessageLookupByLibrary.simpleMessage("Измеряем"),
        "org_leading": MessageLookupByLibrary.simpleMessage(
            "Федеральное государственное унитарное предприятие «Главный радиочастотный центр»"),
        "org_title": MessageLookupByLibrary.simpleMessage("ФГУП «ГРЧЦ»"),
        "org_url": MessageLookupByLibrary.simpleMessage("https://grfc.ru/"),
        "permission_gps": MessageLookupByLibrary.simpleMessage(
            "Отсуствуют права у приложения на работу с GPS"),
        "permission_gsm": MessageLookupByLibrary.simpleMessage(
            "Отсуствуют права у приложения на работу с GSM (телефон)"),
        "permission_memory": MessageLookupByLibrary.simpleMessage(
            "Отсуствуют права у приложения на работу с памятью (хранилищем)"),
        "phone": MessageLookupByLibrary.simpleMessage("телефон"),
        "setting_gsm_type_all": MessageLookupByLibrary.simpleMessage("Все"),
        "settings_server_addr":
            MessageLookupByLibrary.simpleMessage("Адрес сервера"),
        "settings_time_measured":
            MessageLookupByLibrary.simpleMessage("Время измерения (сек)"),
        "settings_title": MessageLookupByLibrary.simpleMessage("Настройки"),
        "speed_download":
            MessageLookupByLibrary.simpleMessage("Загрузка (Мбит/c)"),
        "speed_upload":
            MessageLookupByLibrary.simpleMessage("Отправка (Мбит/c)"),
        "upload_fail": MessageLookupByLibrary.simpleMessage(
            "Не получилось отправить. Проверьте доступность сервера.")
      };
}
