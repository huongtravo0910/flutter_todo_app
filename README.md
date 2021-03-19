# flutter_todo_app

A Flutter project.
Coding challenge from Manabie recruitment team.

## UI
This is a todo managment app, including one text input field and 3 screens as images. The appearance for this is followed by the design on figma : https://www.figma.com/file/JEUOwdeHFnYn8fGrEUS0to/Untitled?node-id=17%3A2.

![screen_1_resized](https://user-images.githubusercontent.com/66101016/111762118-37c3fc00-88d3-11eb-99f6-f4f65c2480d2.png)
![screen_2_resized](https://user-images.githubusercontent.com/66101016/111762145-3eeb0a00-88d3-11eb-9a7e-f88f6b352cc9.png)
![screen_3_resized](https://user-images.githubusercontent.com/66101016/111762365-870a2c80-88d3-11eb-82a6-f6be7caf00f2.png)


## Test coverage
My test coverage result: 
![test_result](https://user-images.githubusercontent.com/66101016/111763999-53c89d00-88d5-11eb-8093-942d5b1a0df1.png)

#### How to run this?
I flow a instruction on https://stackoverflow.com/questions/50789578/how-can-the-code-coverage-data-from-flutter-tests-be-displayed?fbclid=IwAR0C_c2GUH-U0MythBpPPLsQDbpm1M_tB2fdLoOlR7ypIMPokrOkBlg-ZXs as flow: 
"
You can also install lcov and convert the lcov.info file to HTML pages and then see the result in the browser with sorting option

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
 
 
 
