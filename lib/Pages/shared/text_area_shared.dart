import 'package:flutter/material.dart';

class TextAreaShared extends StatefulWidget {
  const TextAreaShared({ Key? key }) : super(key: key);

  @override
  _TextAreaSharedState createState() => _TextAreaSharedState();
}

class _TextAreaSharedState extends State<TextAreaShared> {
  @override
  Widget build(BuildContext context) {

    final FocusNode _focus = FocusNode();
    final TextEditingController _text = TextEditingController();

    final _color = Theme.of(context).colorScheme;

    final _style = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(50.0)
    );

    final _imputDecoration = InputDecoration(
      hintText: "Enviar...",
        enabledBorder: _style,
        focusedBorder: _style,
        filled: true,
        suffixIcon: IconButton(
          icon: Icon(Icons.send_outlined, color: _color.primary, ), 
          onPressed: () {
            final textValue = _text.value.text;
            print(textValue);
            _text.clear();
          },),
        
      );

    return TextFormField(
      
      onTapOutside: (event) {
        ///retirar
        _focus.unfocus();
      },
      
      controller: _text,
      
      focusNode: _focus,
      
      decoration: _imputDecoration,

      ///SE obtiene todo el valor del campo
      onFieldSubmitted: (value) {
      
      _text.clear();
      
        ///Mantiene el foco despeus de accionar el submit
      _focus.requestFocus();
      },

      //Se obtiene el valor por cada cambio
      // onChanged: (value){},
    );
  }
}