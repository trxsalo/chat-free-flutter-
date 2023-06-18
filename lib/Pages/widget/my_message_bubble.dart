import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
const MyMessageBubble({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    final _color = Theme.of(context).colorScheme; 
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          
          decoration: BoxDecoration(
            color: _color.primaryContainer,
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: 
          Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15 ),
          child: Text("Salome------"),)
          ,
        ), 
        SizedBox(height: 10.0,)
      ],
    );
  }
}