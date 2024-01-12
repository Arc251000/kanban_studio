import 'package:kanban_studio/redux/actions/project_screen_actions.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/data/project_entity.dart';
import 'package:kanban_studio/redux/service/project_service.dart';
import 'package:kanban_studio/redux/states/project_details_screen_state.dart';
import 'package:kanban_studio/redux/states/project_screen_state.dart';


AppState createProjectReducer(AppState state, CreateProjectAction action) {
      
      return state.copyWith(
        newProjectScreenState: ProjectScreenState(action.projects)
      );

}


AppState naviageteToProjectDetailsReducer(AppState state, NavigateToProjectDetailsScreenAction action) {
      
      return state.copyWith(
        newProjectDetailsScreenState: ProjectDetailsScreenState(action.id ,action.tasks, ProjectDetailsScreenCreateTaskState("",""),false)
      );

}