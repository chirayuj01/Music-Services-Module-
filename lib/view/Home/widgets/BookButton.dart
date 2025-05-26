import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget BookButtonWidget(BuildContext context){
  double w=MediaQuery.of(context).size.width;
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      onPressed: (){

      },
      child: Text('Book Now',style: TextStyle(
        fontFamily: 'Claim-text',
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: w*0.035
      ),));
}