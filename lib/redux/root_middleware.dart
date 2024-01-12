import 'package:kanban_studio/redux/actions/components_actions/main_navigation_actions.dart';
import 'package:kanban_studio/redux/actions/full_task_actions.dart';
import 'package:kanban_studio/redux/actions/notification_screen_actions.dart';
import 'package:kanban_studio/redux/actions/project_screen_actions.dart';
import 'package:kanban_studio/redux/actions/project_details_screen_action.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/midleware/full_task_middlewares.dart';
import 'package:kanban_studio/redux/midleware/main_navigation_midlewares.dart';
import 'package:kanban_studio/redux/midleware/notifications_screen_middlewares.dart';
import 'package:kanban_studio/redux/midleware/projects_screen_middlewares.dart';
import 'package:kanban_studio/redux/midleware/project_details_screen_middleware.dart';

import "package:redux/redux.dart";




List<Middleware<AppState>> middlewares(){

    return [
      TypedMiddleware<AppState,NavigateToHomeAction>(navigateToHome),
      TypedMiddleware<AppState,NavigateToNotificationScreenAction>(navigateToNotificationScreen),
      TypedMiddleware<AppState,NavigateToProjectsScreenAction>(navigateToProjectsScreen),
      TypedMiddleware<AppState,CreateProjectAction>(createProject),
      TypedMiddleware<AppState,NavigateToProjectDetailsScreenAction>(navigateToProjectDetailsScreen),
      TypedMiddleware<AppState,CreateTaskAction>(createTask),
      TypedMiddleware<AppState,TakeTaskAction>(takeTaskMiddleware),
      TypedMiddleware<AppState,TestTaskAction>(testTaskMiddleware),
      TypedMiddleware<AppState,CompleteTaskAction>(completeTaskMiddleware),
      TypedMiddleware<AppState,DropTaskAction>(dropTaskMiddleware),
      TypedMiddleware<AppState,DeleteTaskAction>(deleteTaskMiddleware),
      TypedMiddleware<AppState,NavigateToFullTaskAction>(navigateToFullTaskMiddleware), 
      TypedMiddleware<AppState,InviteUserToProjectAction>(InviteUserToProjectMiddleware),
      TypedMiddleware<AppState,AcceptInvitationAction>(AcceptInvitationMiddleware), 
 

    ];


}