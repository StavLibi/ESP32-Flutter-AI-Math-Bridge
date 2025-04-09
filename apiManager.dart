import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiMan {
 
  Future<Map> getMapByApi(String url) async{
    http.Response response = await http.get(Uri.parse(url));
    Map<String,dynamic> value = jsonDecode(response.body);
  return value;
  }

  List<KeysHolder> getListOfKeys(Map map) {
    List<KeysHolder> list = [];
    map.forEach((key, value) { 
      list.add(KeysHolder(key: key, value: value.toString())); // Convert the value to a string
    });
    return list;
  }
}

class KeysHolder{
  String key = "";
  String value = "";

  KeysHolder({required this.key, required this.value});

}