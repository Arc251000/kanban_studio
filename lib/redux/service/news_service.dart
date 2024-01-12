import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/data/news_entity.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:kanban_studio/redux/service/http_utils.dart';



Future<List<NewsEntity>> getNews(int page) async {

    
      Response response = await httpGet('${server}/user/news?page=${page}');

      print(response.body);
      // Decodificar el objeto JSON y convertirlo en una lista
      List<dynamic> newsList = jsonDecode(response.body) as List<dynamic>;

      // Crear una lista vacía para almacenar los objetos NewsEntity
      List<NewsEntity> newsEntities = [];

      // Recorrer la lista y crear los objetos NewsEntity usando el método fromJson()
      for (dynamic news in newsList) {
        newsEntities.add(NewsEntity.fromJson(news));
      }

      // Mostrar la lista resultante
      print(newsEntities[0].text);

      return newsEntities;
      


}




