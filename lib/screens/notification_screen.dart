import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/widgets/kanban_studio_scaffold.dart';
import 'package:kanban_studio/widgets/widgetslist/notification_list.dart';

class NotificationScreen extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    
    return StoreConnector<AppState, AppState>(

      converter: (store) => store.state,

      builder: (context, state) {

        return KanbanStudioScaffold(title: "Notificationes", child: KanbanStudioNotificationList(state.notificationScreenState.notifications));

      }
    );
  }
}
