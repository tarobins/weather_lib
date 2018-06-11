import 'package:test/test.dart';
import 'package:weatherLib/src/weatherMap.dart';

void main() {
  test('has temp', () async {
    var weatherMap = await getWeatherMap();

    expect(weatherMap.length, 28);
    expect(weatherMap.keys, contains('temperature_current_C'));
  });
}
