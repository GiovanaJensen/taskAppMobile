import 'package:comecando_com_flutter/data/task-inherited.dart';
import 'package:comecando_com_flutter/screens/form_screen.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: Container(),title: const Text("Tarefas", style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: TaskInherited.of(context).taskList,
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (newContext) => FormScreen(taskContext: context,),),);
        }),
      );
  }
}