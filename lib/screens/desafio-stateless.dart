// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: Text("Tarefas", style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),
//         body: ListView(
//           scrollDirection: Axis.vertical,
//           children: [
//             linha(Colors.white, Colors.pink, Colors.lightBlue),
//             linha(Colors.pink, Colors.purple, Colors.blue)
//           ],
//         ),
//       ),
//       );
//   }
// }
// class linha extends StatelessWidget {
//   final Color cor1, cor2, cor3;
//   const linha(this.cor1, this.cor2, this.cor3,{super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//               children: [
//                 bloco(cor1),
//                 bloco(cor2),
//                 bloco(cor3)
//               ],);
//   }
// }

// class bloco extends StatelessWidget {
//   final Color cor;
//   const bloco(this.cor,{super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(width: 100, height: 100, color: cor);
//   }
// }