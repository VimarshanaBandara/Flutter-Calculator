import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color;
  final  textColor;
  final String buttonText;
  MyButton(this.buttonText,this.color,this.textColor);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          color: color,
          child: Center(child: Text(buttonText,style: TextStyle(color: textColor,fontWeight: FontWeight.bold,fontSize: 20.0),),),
        ),
      ),
    );
  }
}
