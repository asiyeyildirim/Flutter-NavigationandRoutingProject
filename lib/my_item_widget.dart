import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listem.dart';

class MyItemWidget extends StatelessWidget {

  final Mzk item;


  MyItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 0,
        color: Colors.lightGreen.shade200,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListTile(
            leading: Image.asset(item.image,height: 90,width: 100,),
            title: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Center(child: Text(item.name,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 13))),
            ),


          ),
        ),
      ),
    );
  }
}
