import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({ Key? key }) : super(key: key);

  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    final _color =  Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        backgroundColor: _color.primaryContainer,
      ),
      body:Center(
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Text('CHAT JUILIANA :3'),
                TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, 'chat' );
                  }, 
                  child: Text('IR'),
                  autofocus: true,
                  )]),
      ),
    );
  }
}