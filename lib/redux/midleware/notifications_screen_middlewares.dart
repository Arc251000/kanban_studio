import 'package:flutter/material.dart';
import 'package:kanban_studio/redux/actions/notification_screen_actions.dart';
import 'package:kanban_studio/redux/actions/project_details_screen_action.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/service/notification_service.dart';
import 'package:kanban_studio/redux/service/project_details_service.dart';
import 'package:kanban_studio/redux/service/project_service.dart';
import 'package:redux/redux.dart';

AcceptInvitationMiddleware(Store<AppState> store, AcceptInvitationAction action, NextDispatcher next) async {

     await acceptInvitationService(action.url);
    
     action.projects = await getProjects(0);

    
      

}