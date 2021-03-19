# flutter_todo_app

A Flutter project.
Coding challenge from Manabie recruitment team.

## UI
This is a todo managment app, including one text input field and 3 screens as images. The appearance for this is followed by the design on figma : https://www.figma.com/file/JEUOwdeHFnYn8fGrEUS0to/Untitled?node-id=17%3A2.

![screen_1](https://user-images.githubusercontent.com/66101016/111764534-e0735b00-88d5-11eb-997d-7ae0f20248ea.png)
![screen_2](https://user-images.githubusercontent.com/66101016/111764541-e23d1e80-88d5-11eb-8f6f-2a97b0a8fa90.png)
![screen_3](https://user-images.githubusercontent.com/66101016/111764546-e36e4b80-88d5-11eb-8556-1318e67c3d1f.png)



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
 
 
 
