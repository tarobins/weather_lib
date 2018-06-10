import 'dart:async';

import 'package:test/test.dart';
import 'package:weatherLib/src/weatherMap.dart';

void main() {
  test('has temp', () async {
    Future<Map<String, String>> weatherMapFuture = getWeatherMap();

    var weatherMap = await weatherMapFuture;
    
    expect(weatherMap.containsKey('temperature_current_C'), true);
  });
}
