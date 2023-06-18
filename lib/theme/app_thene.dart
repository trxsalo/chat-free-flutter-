import 'package:flutter/material.dart';
import 'colors/colors.dart';

//Importo la lista de colores
List<Color> _colorThemes = ColorThemes().colorThemes;

///Clase para definir el thema 
///de ui
class AppTheme {
  final int selectedColor;
  
  //Constructor
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');
  ///Funcion
  ///@return ThemeData;
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: _colorThemes[selectedColor],
        // brightness: Brightness.dark
      );
  }
}