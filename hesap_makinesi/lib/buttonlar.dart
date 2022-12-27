import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
   String metin;
   int renk;
   int metinRenk;
   double metinBoyut;
   Function tiklama;


  CalculatorButton(
      {
        required this.metin,
        required this.renk,
        required this.metinRenk,
        required this.metinBoyut,
        required this.tiklama
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
            onPressed: (){
              tiklama(metin);
            },
            style: TextButton.styleFrom(
              backgroundColor: Color(renk),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
            ),
            child: Text(
              metin,
              style : TextStyle(fontSize: metinBoyut, color: Color(metinRenk),fontFamily: "Rubik"),
            ),
        ),
      ),
    );
  }
}
