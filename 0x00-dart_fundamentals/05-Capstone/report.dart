import 'package:intl/intl.dart';
import 'package:characters/characters.dart';

void main(List<String> arguments) {
  if(arguments.length < 2) {
    print('Not enough arguments.');
  } else {
    print(greetingMessage(arguments[0]));
  }
  formatToday();
  print('${arguments[1]}\nTitle has ${countVisibleCharacters(arguments)[1]} characters.\n');
  tasks(arguments);
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

tasks (List<String> arguments){
  int tasksTotales = arguments.length - 2;
  int tasksCompletados = 0;
  List<String> taskList = [];

  for(int i = 2; i < arguments.length; i++) {
    taskList.add(arguments[i]);
  }
  Map<String, String> tasksMap = {};
  final regex = RegExp(r'^(.+?):(true|false)$');

  taskList.forEach((task) {
    if(regex.hasMatch(task)){
      tasksMap.addAll({task.split(":")[0]: task.split(":")[1]});
    } else {
      print('Please submit your task information correctly.');
    }
  });
  for(var task in tasksMap.entries) {
    if(task.value == "true") {
      tasksCompletados++;
      print("✅ ${task.key}");
    } else {
      print("❌ ${task.key}");
    }
  }
}