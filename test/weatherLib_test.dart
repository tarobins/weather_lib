import 'package:weatherLib/weatherLib.dart';
import 'package:test/test.dart';

void main() {
  Awesome awesome;

  setUp(() {
    awesome = Awesome();
  });

  test('First Test', () {
    expect(awesome.isAwesome, isTrue);
  });
}
