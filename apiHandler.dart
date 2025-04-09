import 'package:flutter/material.dart';
import 'package:flutter_application_1/apiManager.dart';
import 'package:flutter_application_1/message-widget/messageWidget.dart';

class ApiHandler extends StatefulWidget {
  const ApiHandler({super.key});
  
  @override
  State<ApiHandler> createState() => _ApiHandler();
}
    
class _ApiHandler extends State<ApiHandler> {
  
  ApiMan apiMan = ApiMan();
  Map value = {};
  List<KeysHolder> listKeys = [];
  
  List<MessageCostumeWidget> messages = [MessageCostumeWidget(message: "akakakk", isUser: true)];

  void setMap () async {
    value = await apiMan.getMapByApi("https://jsonplaceholder.typicode.com/todos/1");
    listKeys = apiMan.getListOfKeys(value);
    setState(() {
      // Update the state with the new data
    });

  }

  void sendMessage() {
    setState(() {
    messages.add(MessageCostumeWidget(message: "שלום", isUser: true));
    });
    print(messages[messages.length-1].getText());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          title: Text('api.req',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,  ),),
          centerTitle: true,
        ),*/
        body: /*Center(
          child: ListView.builder(
            itemCount: listKeys.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.local_florist),
              title: Text(listKeys[index].key),
              subtitle: Text(listKeys[index].value), // Display the value from the map
            ),
          )*/
        
        Column(
        children: [
          // אזור ההודעות - נגלל
        ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) => messages[index],
        ),
          
          
          /*
          // אזור ההקלדה - לא נגלל
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "כתוב הודעה...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    sendMessage();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(12),
                    minimumSize: Size(60, 60),
                  ),
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ]
            )
          )*/
        ],  
      ),
        /*floatingActionButton: FloatingActionButton( 
          onPressed: setMap,
          child: const Icon(Icons.local_florist,),
        ),*/
    );  
  }
} 
