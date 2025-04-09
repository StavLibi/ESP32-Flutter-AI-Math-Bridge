import 'package:flutter/material.dart';

class MessageCostumeWidget extends StatelessWidget {
  final String message;//message text
  final bool isUser;//true- >user false->recived
  final int tokens;//length of the message

  const MessageCostumeWidget({
    Key? key,
    required this.message,
    required this.isUser,
  }) : tokens = message.length, super(key: key);

  String getText(){
    return message;
  }

  @override
  Widget build(BuildContext context) {
    return  Container
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
        );
  }
}
