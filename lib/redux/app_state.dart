



import 'package:flutter/material.dart';
import 'package:kanban_studio/redux/data/news_entity.dart';
import 'package:kanban_studio/redux/data/notification_entity.dart';
import 'package:kanban_studio/redux/data/project_entity.dart';
import 'package:kanban_studio/redux/service/notification_service.dart';
import 'package:kanban_studio/redux/service/project_details_service.dart';
import 'package:kanban_studio/redux/service/project_service.dart';
import 'package:kanban_studio/redux/states/home_state.dart';
import 'package:kanban_studio/redux/states/notification_screen_state.dart';
import 'package:kanban_studio/redux/states/project_details_screen_state.dart';
import 'package:kanban_studio/redux/states/project_screen_state.dart';
import 'package:kanban_studio/redux/service/news_service.dart';
import 'package:kanban_studio/widgets/news.dart';
import 'package:redux/redux.dart';


class ViewState {}

String userEmail= "arianbrv2510@gmail.com";
String server ="https://kanbamtable-production.up.railway.app";
// Crear una clase AppState que extienda de ChangeNotifier y que contenga la lógica de negocio de la aplicación
class AppState extends ChangeNotifier {

  
  late List<ViewState> states;
  late HomeState homeState;
  late ProjectScreenState projectScreenState;
  late ProjectDetailsScreenState projectDetailsScreenState;
  late NotificationScreenState notificationScreenState;

  AppState({
    required this.states, 
    required this.homeState,
    required this.projectScreenState, 
    required this.projectDetailsScreenState, 
    required this.notificationScreenState,
    });


  

  AppState copyWith({
                      List<ViewState>? newStates,
                      HomeState? newHomeState,
                      ProjectScreenState? newProjectScreenState,
                      ProjectDetailsScreenState? newProjectDetailsScreenState,
                      NotificationScreenState? newNotificationScreenState,
                      }){
    
    return AppState(
      states: newStates??states,
      homeState: newHomeState??homeState,
      projectScreenState: newProjectScreenState??projectScreenState,
      projectDetailsScreenState: newProjectDetailsScreenState??projectDetailsScreenState,
      notificationScreenState: newNotificationScreenState??notificationScreenState
    );

  }



}



Future<AppState> initAppState() async {
   

    return AppState(
      states: [],
      homeState: HomeState(await getNews(0)),
      projectScreenState: ProjectScreenState(await getProjects(0)),
      projectDetailsScreenState: ProjectDetailsScreenState(0,[],ProjectDetailsScreenCreateTaskState("",""),false),
      notificationScreenState: NotificationScreenState(await getNotifications(0))
    );
  }