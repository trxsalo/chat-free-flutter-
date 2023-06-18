import 'package:flutter/material.dart';

class SheMessageBubble extends StatelessWidget {
const SheMessageBubble({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    final _color = Theme.of(context).colorScheme; 
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          
          decoration: BoxDecoration(
            color: _color.secondaryContainer,
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: 
          Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15 ),
          child: Text("Salome------"),)
          ,
        ), 
        SizedBox(height: 10.0,),

        _Imagen(),

        SizedBox(height: 10.0,)
      ],
    );
  }
}

class _Imagen extends StatelessWidget {
  const _Imagen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
      "https://w2-noticierovenevision-net.s3.amazonaws.com/public/media/warehouse/dove-cameron-1652978105-108639.webp",
      height: 150,
      width: size.width * 0.8,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null ) return child;
        
        return Container(
          width: size.width *0.8,
          height: 150,
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          child: Text("Imagen cargando...")
        );
      },
      ),

    );
  }
}