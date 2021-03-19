// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Todo App', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.

    final addButtonFinder = find.byValueKey("addButton");
    final titleFinder = find.byValueKey("title");

    final checkButton1Finder = find.byValueKey("checkButton1");
    final slide1Finder = find.byValueKey("slide1");
    final text1Finder = find.byValueKey("text1");
    final deleteButton1Finder = find.byValueKey("deleteButton1");

    final checkButton2Finder = find.byValueKey("checkButton2");
    final slide2Finder = find.byValueKey("slide2");
    final text2Finder = find.byValueKey("text2");

    final incompletedButtonFinder = find.byValueKey("incompletedButton");
    final completedButtonFinder = find.byValueKey("completedButton");
    final allButtonFinder = find.byValueKey("allButton");
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
    test("add two todos", () async {
      await driver.tap(titleFinder);
      await driver.enterText("testing add todo1");
      await driver.tap(addButtonFinder);

      await driver.tap(titleFinder);
      await driver.enterText("testing add todo2");
      await driver.tap(addButtonFinder);

      expect(await driver.getText(text1Finder), "testing add todo1");
      expect(await driver.getText(text2Finder), "testing add todo2");
    });

    test("click check one todo", () async {
      await driver.tap(checkButton1Finder);
    });

    test("switch to incompletedScreen", () async {
      await driver.tap(incompletedButtonFinder);
    });

    test("switch completedScreen", () async {
      await driver.tap(completedButtonFinder);
    });

    test("switch homeScreen", () async {
      await driver.tap(allButtonFinder, timeout: Duration(seconds: 1));
    });

    test("delete a todo", () async {
      await driver.scroll(slide1Finder, -600, 0, Duration(seconds: 2));
      await driver.tap(deleteButton1Finder);
    });
  });
}
