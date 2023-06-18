
import 'package:flutter/material.dart';

import '../Pages/chat/chatscreen_chat.dart';
import '../Pages/home/home_pages.dart';

Map<String, WidgetBuilder> getPagesRoutes() {
  return <String, WidgetBuilder>{
    "/": (BuildContext context) => HomePages(),
    "chat": (BuildContext context) => ChatScreen(),
  
  };
}