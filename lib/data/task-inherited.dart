import 'package:comecando_com_flutter/widgets/task.dart';
import 'package:flutter/material.dart';

class TaskInherited extends InheritedWidget {
   TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Task> taskList =  [
    Task('Aprender Flutter', '', 5),
    Task('Andar de Bike', '', 3),
    Task('Meditar', '', 4),
    Task('Ler', '', 1),
    Task('Jogar', '', 2),
  ];

  void newTask (String name, String photo, int difficulty){
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
