# flutter_todo_app

A Flutter project _ coding challenge from Manabie recruitment team.

## UI
This is a todo managment app, including one text input field and 3 screens as images. The appearance for this is followed by the design on figma : https://www.figma.com/file/JEUOwdeHFnYn8fGrEUS0to/Untitled?node-id=17%3A2.

![screen_1 (1)](https://user-images.githubusercontent.com/66101016/111765013-7313fa00-88d6-11eb-8cd0-52b23a0fa268.png)
![screen_3 (1)](https://user-images.githubusercontent.com/66101016/111765016-73ac9080-88d6-11eb-9ac7-2362eaeb345c.png)
![screen_2 (1)](https://user-images.githubusercontent.com/66101016/111765009-71e2cd00-88d6-11eb-8da3-9763aa58a06a.png)





## Test coverage
My test coverage result: 
![test_result](https://user-images.githubusercontent.com/66101016/111763999-53c89d00-88d5-11eb-8093-942d5b1a0df1.png)

#### How to run this?
I flowed a instruction on https://stackoverflow.com/questions/50789578/how-can-the-code-coverage-data-from-flutter-tests-be-displayed?fbclid=IwAR0C_c2GUH-U0MythBpPPLsQDbpm1M_tB2fdLoOlR7ypIMPokrOkBlg-ZXs as flow: 

"
You can install lcov and convert the lcov.info file to HTML pages and then see the result in the browser with sorting option

Installing in Ubuntu:
```
sudo apt-get update -qq -y
sudo apt-get install lcov -y
```
Installing in Mac:
```
brew install lcov
```
Run tests, generate coverage files and convert to HTML
```
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
```
 "
 
 ## My integration test
 ![chosen_gif](https://user-images.githubusercontent.com/66101016/111856719-4526c800-895f-11eb-9f9a-61a5ab585cf4.gif)
 
#### How to run this?

Make sure to have these
```
dev_dependencies:
  flutter_driver:
    sdk: flutter
  test: any
 ```
Run the command line
```
flutter drive --target=test_driver/app.dart
```

Reference: An introduction to integration testing, link: https://flutter.dev/docs/cookbook/testing/integration/introduction
 
 
