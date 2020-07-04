import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('NSS Flutter app', () {
    final homeFinder = find.byValueKey('home');
    final matesFinder = find.byValueKey('mates');
    final profileFinder = find.byValueKey('profile');

    FlutterDriver driver;

    // beforeAll
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // afterAll
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('The navigation buttons have the correct text', () async {
      expect(await driver.getText(homeFinder), 'Home');
      expect(await driver.getText(matesFinder), 'Mates');
      expect(await driver.getText(profileFinder), 'Profile');
    });
  });
}
