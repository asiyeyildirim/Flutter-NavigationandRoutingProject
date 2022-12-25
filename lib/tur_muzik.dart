import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneri_app/liste_muzik.dart';

class Tur_muzik extends StatefulWidget{
  const Tur_muzik({Key? key}) : super(key: key);

  @override
  State<Tur_muzik> createState() => _Tur_muzikState();
}

class _Tur_muzikState extends State<Tur_muzik> {
  @override
  Widget build(BuildContext context) {


    return  Scaffold(

      /*yukardaki yapı demek */
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Müzik ve Kitap Öneri", style: TextStyle(fontFamily: "Acme", fontSize: 24),),

      ),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [



                  SizedBox(width: 330, height: 200,
                      child: Image.asset(
                          "gorseller/sarkicilar.jpg")),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("2022 Trend Sarkılar Listesi!",style: TextStyle(fontFamily: "Acme",fontSize: 21, fontWeight: FontWeight.bold)),
                  ),

                  //Kitap Öneri için

                  SizedBox(width: 330, height: 200,
                      child: Image.asset("gorseller/yabancisarkicilar.jpg")),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Liste_muzik()));
                    },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue[300],
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        ),
                        child: const Text("Listeyi Görmek için tıkla!",style: TextStyle(fontFamily: "Acme",fontSize: 16,),)),
                  ),



                ],
              ),
            ),
          ],
        ),
      ),
    );


  }
}
