// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
            Container(color: Colors.red,width:100, height: 100,),
            Container(color: Colors.orange, width: 100, height:100),
            Container(color: Colors.yellow, width: 100, height: 100)
          ],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
            Container(color: Colors.green, width: 100, height:100),
            Container(color: Colors.lightBlue, width: 100, height: 100),
            Container(color: Colors.blue,width: 100, height: 100)
          ],),
          Row(children: [
            Container(color: Colors.purple, width:100, height:100),
            Container(color: Colors.pink, width: 100, height: 100),
            Container(color: Colors.white, width: 100, height: 100),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          )
        ],)
      );
  }
}