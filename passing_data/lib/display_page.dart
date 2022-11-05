
import 'package:flutter/material.dart';

class DisplayValue extends StatelessWidget{
  const DisplayValue ({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Passing Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title:const Text("Second Page"),
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text(
              title,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900
            ),
          ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text(
              'Go Back',
              style: TextStyle(fontSize:30)
            ))
          ]
        ),
    ),);
  }
  
  
}