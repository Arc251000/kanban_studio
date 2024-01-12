import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/data/news_entity.dart';
import 'package:http/http.dart';
import 'package:kanban_studio/redux/data/notification_entity.dart';
import 'dart:convert';
import 'package:kanban_studio/redux/service/http_utils.dart';



Future<List<NotificationEntity>> getNotifications(int page) async {

    
      Response response = await httpGet('${server}/user/notifications?page=${page}');

      
      
      // Decodificar el objeto JSON y convertirlo en una lista
      List<dynamic> notificationList = jsonDecode(response.body) as List<dynamic>;

      // Crear una lista vacía para almacenar los objetos NewsEntity
      List<NotificationEntity> notificationEntities = [];

      // Recorrer la lista y crear los objetos NewsEntity usando el método fromJson()
      for (dynamic news in notificationList) {
        notificationEntities.add(NotificationEntity.fromJson(news));
      }


      return notificationEntities;
      


}


Future<Response> acceptInvitationService(String url) async {

      return await httpPost('${server}${url}',{});

}



