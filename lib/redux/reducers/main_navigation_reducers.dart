import 'package:kanban_studio/redux/actions/components_actions/main_navigation_actions.dart';
import 'package:kanban_studio/redux/actions/project_screen_actions.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/data/project_entity.dart';
import 'package:kanban_studio/redux/service/project_service.dart';
import 'package:kanban_studio/redux/states/home_state.dart';
import 'package:kanban_studio/redux/states/project_details_screen_state.dart';
import 'package:kanban_studio/redux/states/project_screen_state.dart';

AppState NavigateToProjectsScreenReducer(AppState state, NavigateToProjectsScreenAction action) {
      
      return state.copyWith(
        newProjectScreenState: ProjectScreenState(action.projects)
      );

}


AppState NavigateToHomeReducer(AppState state, NavigateToHomeAction action) {
      
      return state.copyWith(
        newHomeState: HomeState(action.news)
      );

}