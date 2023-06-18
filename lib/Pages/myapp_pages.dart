import 'package:chat_disenho/theme/app_thene.dart';
import 'package:flutter/material.dart';

import '../routes/ruta_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: AppTheme(selectedColor: 2).theme(),
      
      debugShowCheckedModeBanner: false,
      
      initialRoute: "/",
      
      routes: getPagesRoutes(),
    );
  }
}