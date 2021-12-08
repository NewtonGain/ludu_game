import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Ludu Game'),
          backgroundColor: Colors.red,
        ),
        body: LuduGame(),
      ),
    ),
  );
}

class LuduGame extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int luduChokkhaNumber =5;
    int luduChokkhaNumber1 =6;
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              
              child: TextButton(onPressed: (){},
              child: Image.asset('images/chokkha-$luduChokkhaNumber.png')),
            ),
          ),
         Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(onPressed: (){},
              child: Image.asset('images/chokkha-$luduChokkhaNumber1.png')),
            ),
          ),
        ],
      ),
    );
  }
}
