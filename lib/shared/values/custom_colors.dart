import 'package:flutter/material.dart';

class CustomColors{
  Color _activePrimaryButton = Color.fromARGB(255, 63, 81, 181);
  Color _activeSecundaryButton = Color.fromARGB(255, 230, 230, 255);
   Color _gradientMainColor = Colors.blue;
  Color _gradientSecundaryColor = Color.fromARGB(255, 212, 247, 255);
  
  Color getActivePrimaryButtonColor(){
    return _activePrimaryButton;
  }

  Color getActiveSecundaryButtonColor(){
    return _activeSecundaryButton;
  }

  Color getGradientMainColor(){
    return _gradientMainColor;
  }

    Color getGradientSecundaryColor(){
    return _gradientSecundaryColor
    ;
  }
}