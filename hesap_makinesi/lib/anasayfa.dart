import 'package:flutter/material.dart';
import 'package:hesap_makinesi/buttonlar.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  late int sayi1;
  late int sayi2;
  late String gozukenSayi = "";
  late String eskiIslem = "";
  late String sonuc;
  late String islem;

  void tikla(String tiklananDeger){
      print(tiklananDeger);

      if(tiklananDeger == "C"){

        gozukenSayi = "";
        sonuc = "";
        sayi1=0;
        sayi2=0;
        eskiIslem = "";
        islem = "";

      }else if (tiklananDeger == "( )"){

      }else if(tiklananDeger == "%"){

      }else if(tiklananDeger == "/"){

      }else if(tiklananDeger == "X"){

      }else if(tiklananDeger == "-"){

      }else if(tiklananDeger == "+"){

        sayi1 = int.parse(gozukenSayi);
        sonuc ="";
        islem = tiklananDeger;

      }else if(tiklananDeger == "="){

        sayi2 = int.parse(gozukenSayi);
        if(islem == "+"){
         sonuc = (sayi1 + sayi2).toString();
         eskiIslem = sayi1.toString()+islem.toString()+sayi2.toString();
        }

      }else{
         sonuc = int.parse(gozukenSayi + tiklananDeger).toString();
      }
      setState(() {
        gozukenSayi = sonuc;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFD3C4F2),
        appBar: AppBar(title: const Text("Calculator",), centerTitle: true,titleTextStyle: TextStyle(fontFamily: "Prosto", fontSize: 30, color: Colors.white),backgroundColor: Color(0xFF432774),),
        body: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                alignment: Alignment(1.0,1.0),
                child:  Padding(
                  padding: EdgeInsets.only(right: 12, bottom: 8),
                  child: Text(eskiIslem, style: TextStyle(fontSize: 25,color: Colors.black54),),
                )),
            Container(
                alignment:  Alignment(1.0,1.0),
                child:  Padding(
                  padding: EdgeInsets.only(right: 12, bottom: 8),
                  child: Text(gozukenSayi, style: TextStyle(fontSize: 40, color: Colors.black),),
                ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                    metin: "C",
                    renk: 0xFF432774 ,
                    metinRenk: 0xFFFFFFFF ,
                    metinBoyut: 20.0,
                    tiklama: tikla,
                    ),
                CalculatorButton(
                  metin: "()",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
                CalculatorButton(
                  metin: "%",
                  renk:0xFF432774 ,
                  metinRenk: 0xFFFFFFFF ,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
                CalculatorButton(
                  metin: "/",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF ,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  metin: "7",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF ,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
                CalculatorButton(
                  metin: "8",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
                CalculatorButton(
                  metin: "9",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF ,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
                CalculatorButton(
                  metin: "X",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF ,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  metin: "4",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF ,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
                CalculatorButton(
                  metin: "5",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF,
                  metinBoyut:20.0,
                  tiklama: tikla,
                ),
                CalculatorButton(
                  metin: "6",
                  renk:0xFF432774 ,
                  metinRenk: 0xFFFFFFFF ,
                  metinBoyut: 20.0,
                  tiklama:tikla,
                ),
                CalculatorButton(
                  metin: "-",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF ,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  metin: "1",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF ,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
                CalculatorButton(
                  metin: "2",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
                CalculatorButton(
                  metin: "3",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF ,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
                CalculatorButton(
                  metin: "+",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF ,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  metin: "+/-",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF ,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
                CalculatorButton(
                  metin: "0",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF,
                  metinBoyut: 20.0,
                  tiklama: tikla,
                ),
                CalculatorButton(
                  metin: ",",
                  renk: 0xFF432774 ,
                  metinRenk: 0xFFFFFFFF ,
                  metinBoyut: 20.0,
                  tiklama:tikla,
                ),
                CalculatorButton(
                  metin: "=",
                  renk:0xFF432774 ,
                  metinRenk: 0xFFFFFFFF ,
                  metinBoyut:20.0,
                  tiklama: tikla,
                ),
              ],
            ),
          ],
        ),
      );
  }
}
