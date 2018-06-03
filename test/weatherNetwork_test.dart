import 'dart:async';

import 'package:test/test.dart';
import 'package:weatherLib/src/weatherNetwork.dart';

void main() {
  test('has temp', () async {
    Future<Stream<String>> s = getXmlStringStream();

    var found = false;

    await for (var string in (await s)) {
      if (string.contains('temperature_current_C')) {
        found = true;
        break;
      }
    }

    expect(found, isTrue);
  });
}
