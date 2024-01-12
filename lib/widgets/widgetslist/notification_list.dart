import 'package:flutter/material.dart';
import 'package:kanban_studio/redux/data/notification_entity.dart';
import 'package:kanban_studio/widgets/notification.dart';


class KanbanStudioNotificationList extends StatelessWidget {

  final List<NotificationEntity> notifications;

  KanbanStudioNotificationList(this.notifications);
  // Este widget es la raíz de la aplicación.
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: notifications.length, // El número de elementos de la lista
          itemBuilder: (context, index) {
            // La función que construye cada elemento de la lista
            return  KanbanStudioNotification(accepted: notifications[index].accepted, text: notifications[index].text, viewed: notifications[index].viewed, url:notifications[index].url) ;
          },
         
        );
  }
}
