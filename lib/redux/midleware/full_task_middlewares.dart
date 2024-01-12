import 'package:flutter/material.dart';
import 'package:kanban_studio/redux/actions/full_task_actions.dart';
import 'package:kanban_studio/redux/actions/project_screen_actions.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/service/full_task_service.dart';
import 'package:kanban_studio/redux/service/http_utils.dart';
import 'package:kanban_studio/redux/service/project_details_service.dart';
import 'package:kanban_studio/redux/service/project_service.dart';
import 'package:kanban_studio/screens/project_details_screen.dart';
import 'package:redux/redux.dart';
import 'package:http/http.dart';



takeTaskMiddleware(Store<AppState> store, TakeTaskAction action, NextDispatcher next) async {
  
  
  Response response = await takeTask(action.taskId);

  action.tasks= await getProjectTasks(store.state.projectDetailsScreenState.projectId);

  next(action);

}


testTaskMiddleware(Store<AppState> store, TestTaskAction action, NextDispatcher next) async {
  
  
  Response response = await testTask(action.taskId);

  action.tasks= await getProjectTasks(store.state.projectDetailsScreenState.projectId);

  next(action);

}


completeTaskMiddleware(Store<AppState> store, CompleteTaskAction action, NextDispatcher next) async {
  
  
  Response response = await completeTask(action.taskId);

  action.tasks= await getProjectTasks(store.state.projectDetailsScreenState.projectId);

  next(action);

}



dropTaskMiddleware(Store<AppState> store, DropTaskAction action, NextDispatcher next) async {
  
  
  Response response = await dropTask(action.taskId);

  action.tasks= await getProjectTasks(store.state.projectDetailsScreenState.projectId);

  next(action);

}


deleteTaskMiddleware(Store<AppState> store, DeleteTaskAction action, NextDispatcher next) async {
  
  
  Response response = await deleteTask(action.taskId);

  action.tasks= await getProjectTasks(store.state.projectDetailsScreenState.projectId);

  next(action);

}



