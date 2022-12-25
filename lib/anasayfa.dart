import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneri_app/tur_kitap.dart';
import 'package:oneri_app/tur_muzik.dart';


class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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



                  SizedBox(width: 300, height: 220,
                      child: Image.asset(
                          "gorseller/music.jpeg")),

                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: ElevatedButton(onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Tur_muzik()));
                    },

                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue[300],
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        ),
                        child: const Text("Müzik Öneri", style: TextStyle(fontFamily: "Acme",fontSize: 14, wordSpacing: 1),)),
                  ),

                  //Kitap Öneri için

                  SizedBox(width: 380, height: 220,
                      child: Image.asset("gorseller/book.png")),

                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: ElevatedButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Tur_kitap()));
                    },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue[300],
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        ),
                        child: const Text("Kitap Öneri",style: TextStyle(fontFamily: "Acme",fontSize: 14),)),
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
