import 'dart:async';
import 'package:xml/xml.dart';

import 'weatherNetwork.dart';

Future<Map<String, String>> getWeatherMap() {
  return getXmlString().then((String xmlString) => new Map.fromIterable(
      parse(xmlString)
          .children
          .where((node) => node is XmlElement)
          .first
          .descendants
          .where((node) => node is XmlElement),
      key: (node) => node.name.local,
      value: (node) => node.text));
}
