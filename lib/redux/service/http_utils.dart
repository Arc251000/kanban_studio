import 'package:http/http.dart' as http; 
import 'package:http/http.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'dart:convert';


String userpass = 'arianbrv2510@gmail.com:password';

Future<Response> httpGet(String url) async{
      
      
      

      String basicAuth = 'Basic ' + base64Encode(utf8.encode(userpass));
                   
      return await http.get(
                    Uri.parse(url),
                      headers: <String, String>{'authorization': basicAuth},
                      );

}


Future<Response> httpPost(String url, Map<String,dynamic> object) async{

    String basicAuth = 'Basic ' + base64Encode(utf8.encode(userpass));
    print("Holaaaaaaaaaaaaaaaaa");
    print(url);

    if(object!={})
      return await http.post(Uri.parse(url),
                       headers: <String, String>{
                        'authorization': basicAuth,
                        'Content-Type': 'application/json'
                        }, 
                        body: jsonEncode(object), );
    else 
         return await http.post(Uri.parse(url),
                       headers: <String, String>{
                        'authorization': basicAuth},  
                        );
}


Future<Response> httpDelete(String url, Map<String,dynamic> object) async{

    String basicAuth = 'Basic ' + base64Encode(utf8.encode(userpass));
    

    if(object!={})
      return await http.delete(Uri.parse(url),
                       headers: <String, String>{
                        'authorization': basicAuth,
                        'Content-Type': 'application/json'
                        }, 
                        body: jsonEncode(object), );
    else 
         return await http.delete(Uri.parse(url),
                       headers: <String, String>{
                        'authorization': basicAuth},  
                        );


}