import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneri_app/listem.dart';
import 'package:oneri_app/my_item_widget.dart';
import 'package:oneri_app/sonuc.dart';

class Liste_muzik extends StatefulWidget {
  const Liste_muzik({Key? key}) : super(key: key);

  @override
  State<Liste_muzik> createState() => _Liste_muzikState();
}

class _Liste_muzikState extends State<Liste_muzik> {

  void initState(){

    super.initState();

  }

  @override
  Widget build(BuildContext context){


  return Scaffold(
  appBar: AppBar(
  centerTitle: true,
  title: const Text(
  "Müzik ve Kitap Öneri",
  style: TextStyle(fontFamily: "Acme", fontSize: 24),),

  leading: IconButton(
  icon: Icon(Icons.navigate_next_sharp),
  onPressed: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => const Sonuc()));
  },
  ),

  ),
  body: Center(


  child:ListView.builder(

  itemCount: Mzk.items.length,
  itemBuilder: (context, index) {
  return MyItemWidget(item: Mzk.items[index]);
  },
  ),

  ),







  );



}
}
