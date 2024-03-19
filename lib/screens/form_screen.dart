import 'package:flutter/material.dart';

import '../data/task-inherited.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key, required this.taskContext});
  final BuildContext taskContext;

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dificultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool valueValidator(String? value){
    if(value != null && value.isEmpty){
      return true;
    }
    return false;
  }

  bool dificultyValidator(String? value){
    if(value != null && value.isEmpty){
      if(int.parse(value) > 1 || int.parse(value) < 5){
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
                  backgroundColor: Colors.blue, 
                  title: const Text("Nova Tarefa", 
                    style: 
                      TextStyle(color: Colors.white),
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                            height: 650, 
                            width: 350, 
                            decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(width: 3),
                                        ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      validator: (String? value) {
                                        if(valueValidator(value)){
                                          return "Insira o nome da tarefa";
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.text,
                                      controller: nameController,
                                      textAlign: TextAlign.center,
                                      decoration: const InputDecoration(
                                                    border: OutlineInputBorder(),
                                                    hintText: "Nome",
                                                    fillColor: Colors.white70,
                                                    filled: true,
                                                  ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      validator: (value) {
                                        if(dificultyValidator(value)){
                                          return "Insira uma dificuldade entre 1 e 5";
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.number,
                                      controller: dificultyController,
                                      textAlign: TextAlign.center,
                                      decoration: const InputDecoration(
                                                    border: OutlineInputBorder(),
                                                    hintText: "Dificuldade",
                                                    fillColor: Colors.white70,
                                                    filled: true,
                                                  ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      onChanged:(text) {
                                        setState(() {
                                          
                                        });
                                      },
                                      validator: (value){
                                        if(valueValidator(value)){
                                          return "Insira uma url válida";
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.url,
                                      controller: imageController,
                                      textAlign: TextAlign.center,
                                      decoration: const InputDecoration(
                                                    border: OutlineInputBorder(),
                                                    hintText: "Imagem",
                                                    fillColor: Colors.white70,
                                                    filled: true,
                                                  ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height:100,
                                      width: 72,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(width: 2, color: Colors.blue)
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          imageController.text, 
                                          errorBuilder: (BuildContext context, Object excception, StackTrace? stackTrace) {
                                            return Image.network("https://cdn-icons-png.flaticon.com/512/259/259987.png");
                                          },
                                          fit: BoxFit.cover,),
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: (){
                                      if(_formKey.currentState!.validate()){
                                        TaskInherited.of(widget.taskContext).newTask(nameController.text, imageController.text, int.parse(dificultyController.text));
                                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Printando uma tarefa")));
                                        Navigator.pop(context);
                                      }
                                      
                                    },
                                    child: const Text("Adicionar"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                  ),
                ),
      
      ),
    );
  }
}