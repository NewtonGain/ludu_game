import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          
          title: Text('Ludu Game',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: LuduGame(),
      ),
    ),
  );
}

class LuduGame extends StatefulWidget {
  
  @override
  _LuduGameState createState() => _LuduGameState();
}
int luduChokkhaNumber =Random().nextInt(6)+1;
int luduChokkhaNumber1 =Random().nextInt(6)+1;
class _LuduGameState extends State<LuduGame> {
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              
              child: TextButton(onPressed: (){
               setState(() {
                 luduChokkhaNumber1 = Random().nextInt(6)+1;
               });
              },
              child: Image.asset('images/chokkha-$luduChokkhaNumber1.png')),
            ),
          ),
         Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(onPressed: (){
                setState(() {
                  luduChokkhaNumber = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/chokkha-$luduChokkhaNumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}
