import 'package:intl/intl.dart';
import 'package:characters/characters.dart';
void main (){
  formatToday();
  print('Visible characters: ${countVisibleCharacters('👨‍👩‍👧‍👦 family')}');
  print(greetingMessage('Ada'));
  printEachCharacter('Dart 🚀');
}

formatToday (){
  var currentTime = DateTime.now();
  var formato = DateFormat.yMMMMEEEEd();
  print(formato.format(currentTime));
}

countVisibleCharacters (String text){
  return(text.characters.length);
}

greetingMessage (String name){
  String msg;
  int currentTime = DateTime.now().hour;
  switch (currentTime){
    case >= 5 && <= 11:
      msg = 'Good morning, $name!';
      break;
    case >= 12 && <= 17:
      msg = 'Good afternoon, $name!';
      break;
    default:
      msg = 'Good evening, $name!';
      break;
  }
  return msg;
}

printEachCharacter (String input){
  for (var char in input.characters){
    print(char);
  }
}