import 'package:html/dom.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CountriesResponseConverter {
  static const String SELECTOR = ".land-label";
  static const String JSON_KEY = "countries";
  static const String KEY_ID = "id";
  static const String KEY_NAME = "name";

  Map<String, List<Map<String, String>>> convert(String html) {
    final document = Document.html(html);
    var map = document
        .querySelectorAll(SELECTOR)
        .map((element) => mapDomElementToJsonObject(element))
        .toList();
    return {JSON_KEY: map};
  }

  Map<String, String> mapDomElementToJsonObject(Element element) {
    return {KEY_ID: element.id.split('-').last, KEY_NAME: element.text};
  }
}
