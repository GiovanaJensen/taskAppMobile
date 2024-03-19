import 'package:flutter/material.dart';
import 'difficulty.dart';

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;
  const Task(this.nome, this.foto, this.dificuldade,{super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.blue),
            height: 140),
          Column(
            children: [
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.white), height: 100, child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 80,
                    child: Image.network(widget.foto, fit: BoxFit.cover,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          widget.nome, style: const TextStyle(fontSize: 20), overflow: TextOverflow.ellipsis,
                        )
                      ),
                      Difficulty(difficultLevel: widget.dificuldade,),
                    ],
                  ),
                  SizedBox(
                    width: 80,
                    height: 52,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        nivel++;
                      });
                    }, child: 
                        const Column(
                          children: [
                            Icon(Icons.arrow_drop_up),
                            Text("UP", style: TextStyle(fontSize: 12))
                          ],
                        )
                    ),
                  )
                ],
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 200, child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: LinearProgressIndicator(
                      color: Colors.white,
                      value: (widget.dificuldade >0) ?
                      (nivel/widget.dificuldade) / 10 : 1,
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text("Nivel $nivel", style: const TextStyle(color: Colors.white, fontSize: 18),),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}