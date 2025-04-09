
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/message-widget/messageWidget.dart';
/*
import 'package:flutter_application_1/apiManager.dart';
import 'package:flutter_blue/flutter_blue.dart';*/

class Blehandler extends StatefulWidget {
  const Blehandler({super.key});
  
  @override
  State<Blehandler> createState() => _Blehandler();
}

class _Blehandler extends State<Blehandler> {
  
  bool isUser = true;
  String message = "Hello, this is a test message!";
  int tokens = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bluetooth Manager', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Center(
        child: Container
        (
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3),
          ),
          child: 
              Padding(padding: EdgeInsets.all(5),
                child: Container(
                  constraints: BoxConstraints(minHeight: 50, minWidth: 50),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration( 
                    color: isUser ? const Color(0xff8AB2A6) : const Color(0xffACD3A8),
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomLeft: isUser ? Radius.circular(16) : Radius.zero,
                    bottomRight: isUser ? Radius.zero : Radius.circular(16),
                    ),
                  ),
                child:                 
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    
                    Text(message, textAlign:TextAlign.right,softWrap: true, style: TextStyle(fontSize: 16.0,),),
                    Text(tokens.toString(),),
                  ],
                ),
              ),      
          ), 
        ),
      ),
    );
  }
}