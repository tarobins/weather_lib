import 'dart:async';
import 'package:xml/xml.dart';

import 'weatherNetwork.dart';

Future<Map<String, String>> getWeatherMap() {
  return getXmlString().then((String xmlString) => new Map.fromIterable(
      parse(xmlString).descendants.where((node) =>
          node is XmlElement &&
          node.children.length == 1 &&
          node.children[0] is XmlText),
      key: (node) => node.name.local,
      value: (node) => node.text));
}
