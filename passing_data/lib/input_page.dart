import 'package:flutter/material.dart';

import 'display_page.dart';
late final String text;

class FirstPage extends StatelessWidget {
  const FirstPage ({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: myController,
            decoration: const InputDecoration(
              labelText:"Enter a Text",
              border: OutlineInputBorder()
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          ElevatedButton(onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context)=>DisplayValue(title: myController.text))
            );
          }, child: const Text('Pass Data',
          style: TextStyle(fontSize:30),))
        ],
      ),
    );
  }}