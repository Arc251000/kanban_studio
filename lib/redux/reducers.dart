import 'package:kanban_studio/redux/actions/components_actions/main_navigation_actions.dart';
import 'package:kanban_studio/redux/actions/full_task_actions.dart';
import 'package:kanban_studio/redux/actions/project_details_screen_action.dart';
import 'package:kanban_studio/redux/actions/project_screen_actions.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/midleware/main_navigation_midlewares.dart';
import 'package:kanban_studio/redux/reducers/full_task_reducers.dart';
import 'package:kanban_studio/redux/reducers/main_navigation_reducers.dart';
import 'package:kanban_studio/redux/reducers/project_details_screen_reducer.dart';
import 'package:kanban_studio/redux/reducers/projects_screen_reducers.dart';
import 'package:redux/redux.dart';






final Reducer<AppState> reducers = 
  combineReducers<AppState>([
                            TypedReducer<AppState,CreateProjectAction>(createProjectReducer),
                            TypedReducer<AppState,NavigateToProjectsScreenAction>(NavigateToProjectsScreenReducer),
                            TypedReducer<AppState,NavigateToHomeAction>(NavigateToHomeReducer),
                            TypedReducer<AppState,NavigateToProjectDetailsScreenAction>(naviageteToProjectDetailsReducer),
                            TypedReducer<AppState,CreateTaskAction>(createTaskReducer),
                            TypedReducer<AppState,CreateTaskUpdateResumeAction>(createTaskUpdateResumeReducer),
                            TypedReducer<AppState,CreateTaskUpdateDescriptionAction>(createTaskUpdateDescriptionReducer),
                            TypedReducer<AppState,ChangeCreateTaskPopUpVisibilityAction>(changeCreateTaskPopUpVisibilityActionReducer),
                            TypedReducer<AppState,TakeTaskAction>(takeTaskReducer),
                            TypedReducer<AppState,TestTaskAction>(testTaskReducer),
                            TypedReducer<AppState,CompleteTaskAction>(completeTaskReducer),
                            TypedReducer<AppState,DropTaskAction>(dropTaskReducer),
                            TypedReducer<AppState,DeleteTaskAction>(deleteTaskReducer),
]);


AppState rootReducer(AppState state, var action){

  return reducers(state,action);

}
