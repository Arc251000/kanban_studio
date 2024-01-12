import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:kanban_studio/redux/actions/components_actions/main_navigation_actions.dart';
import 'package:kanban_studio/redux/app_state.dart';


class KanbanStudioBotomNavigationBar extends StatelessWidget {
  // Este widget es la raíz de la aplicación.
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

        onTap: (int index){
          
          if(index==0)
            StoreProvider.of<AppState>(context)
                      .dispatch(NavigateToHomeAction(context));
          else if(index==1)
            StoreProvider.of<AppState>(context)
                      .dispatch(NavigateToProjectsScreenAction(context));
          else if(index==2)
            StoreProvider.of<AppState>(context)
                      .dispatch(NavigateToNotificationScreenAction(context));


        },

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Noticias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'Proyectos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificaciones',
          ),
        ]
        );
  }
}
