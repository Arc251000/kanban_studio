import 'package:flutter/material.dart';
import 'package:kanban_studio/redux/actions/project_details_screen_action.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/service/http_utils.dart';
import 'package:kanban_studio/redux/service/project_details_service.dart';
import 'package:kanban_studio/redux/service/project_service.dart';
import 'package:kanban_studio/screens/full_task_screen.dart';
import 'package:kanban_studio/screens/notification_screen.dart';
import 'package:redux/redux.dart';
import 'package:http/http.dart';



createTask(Store<AppState> store, CreateTaskAction action, NextDispatcher next) async {
  
  
  Response response = await createTaskService(action);

  action.tasks= await getProjectTasks(action.projectId);

  next(action);


}


navigateToFullTaskMiddleware(Store<AppState> store,NavigateToFullTaskAction action, NextDispatcher next) {
      
      Navigator.push(
      action.context,
       MaterialPageRoute(
                  builder: (context) => FullTaskScreen(action.taskId, action.resume, action.description, ""),
                ),
    );

}


InviteUserToProjectMiddleware(Store<AppState> store, InviteUserToProjectAction action, NextDispatcher next) async {

      InviteUserToProjectService(action.email,action.projectId);

}
