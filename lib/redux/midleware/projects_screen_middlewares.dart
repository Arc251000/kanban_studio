
import 'package:flutter/material.dart';
import 'package:kanban_studio/redux/actions/project_screen_actions.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/service/http_utils.dart';
import 'package:kanban_studio/redux/service/project_details_service.dart';
import 'package:kanban_studio/redux/service/project_service.dart';
import 'package:kanban_studio/screens/project_details_screen.dart';
import 'package:redux/redux.dart';
import 'package:http/http.dart';



createProject(Store<AppState> store,CreateProjectAction action, NextDispatcher next) async {
  
  
  Response response = await httpPost('${server}/projects/create?name=${action.name}', {});

  action.projects= await getProjects(0);

  next(action);


}


navigateToProjectDetailsScreen(Store<AppState> store,NavigateToProjectDetailsScreenAction action, NextDispatcher next) async {
  
  action.tasks= await getProjectTasks(action.id);

  Navigator.push(
      action.context,
       MaterialPageRoute(
                  builder: (context) => ProjectDetailsScreen(),
                ),

  );


  next(action);

}