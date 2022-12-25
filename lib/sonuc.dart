import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneri_app/anasayfa.dart';

class Sonuc extends StatefulWidget {
  const Sonuc({Key? key}) : super(key: key);

  @override
  State<Sonuc> createState() => _SonucState();
}

class _SonucState extends State<Sonuc> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Müzik ve Kitap Öneri",
          style: TextStyle(fontFamily: "Acme", fontSize: 24),),


      ),
      body: Center(

        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [


            Padding(

              padding: const EdgeInsets.all(5.0),
              child: Text("Müzik Listesinin sonuna geldik!",style: TextStyle(fontFamily: "Acme",fontSize: 17, fontWeight: FontWeight.bold, color: Colors.red)),
            ),


            SizedBox(width: 330, height: 200,
                child: Image.asset("gorseller/sarkicilar.jpg")),

            Padding(

              padding: const EdgeInsets.all(5.0),
              child: Text("2022 Trend Okunanlar Listesi ise Henüz Yayınlanmadı!",style: TextStyle(fontFamily: "Acme",fontSize: 17, fontWeight: FontWeight.bold, color: Colors.lightBlue)),
            ),
            SizedBox(width: 330, height: 200,
                child: Image.asset("gorseller/dunyaedebiyati.jpg")),

            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Anasayfa()));

            },
                child: const Text("Anasayfaya Dön")),

          ],

        ),

      ),


    );

  }
}
