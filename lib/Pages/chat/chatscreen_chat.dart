import 'package:chat_disenho/Pages/shared/text_area_shared.dart';
import 'package:chat_disenho/Pages/widget/my_message_bubble.dart';
import 'package:chat_disenho/Pages/widget/she_message_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final _color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color.primary,
        centerTitle: false,
        title: const Text('Juliana :3', style: TextStyle(fontSize: 19.9)),
        leading: const Padding(padding:  EdgeInsets.all(2.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6DvtZv7gpHoHLAVG1Ie1ZBzbyfQYaZtU2ng&usqp=CAU'),
          ),
      ),
      ),
      body: _ChatscreenChat()
    );
  }
} 

class _ChatscreenChat extends StatelessWidget {

const _ChatscreenChat({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: 
        Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 10.0 ),
          child: Column(
            children: 
            [
              Expanded(
                child: 
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return ( index % 2 == 0 )
                      ? SheMessageBubble()
                      : MyMessageBubble();
                    },
                  )
              ),
              TextAreaShared(),
            ]
          ),
        ),
    );
  }
}