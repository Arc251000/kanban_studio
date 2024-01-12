import 'package:kanban_studio/redux/actions/project_details_screen_action.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/data/project_entity.dart';
import 'package:kanban_studio/redux/service/project_service.dart';
import 'package:kanban_studio/redux/states/project_details_screen_state.dart';
import 'package:kanban_studio/redux/states/project_screen_state.dart';


AppState createTaskReducer(AppState state, CreateTaskAction action) {
      
      return state.copyWith(
        newProjectDetailsScreenState: ProjectDetailsScreenState(action.projectId,action.tasks,ProjectDetailsScreenCreateTaskState("",""),state.projectDetailsScreenState.isPopUpVisible)
      );

}


AppState createTaskUpdateResumeReducer(AppState state, CreateTaskUpdateResumeAction action) {
      
      return state.copyWith(
        newProjectDetailsScreenState: ProjectDetailsScreenState(
              state.projectDetailsScreenState.projectId,
              state.projectDetailsScreenState.tasks,
              ProjectDetailsScreenCreateTaskState(action.resume, state.projectDetailsScreenState.data.description,),
              state.projectDetailsScreenState.isPopUpVisible
              )
      );

}


AppState createTaskUpdateDescriptionReducer(AppState state, CreateTaskUpdateDescriptionAction action) {
      
      return state.copyWith(
        newProjectDetailsScreenState: ProjectDetailsScreenState(
              state.projectDetailsScreenState.projectId,
              state.projectDetailsScreenState.tasks,
              ProjectDetailsScreenCreateTaskState(state.projectDetailsScreenState.data.resume, action.description),
              state.projectDetailsScreenState.isPopUpVisible
              )
      );

}

AppState changeCreateTaskPopUpVisibilityActionReducer(AppState state, ChangeCreateTaskPopUpVisibilityAction action) {
      
      return state.copyWith(
        newProjectDetailsScreenState: ProjectDetailsScreenState(
              state.projectDetailsScreenState.projectId,
              state.projectDetailsScreenState.tasks,
              state.projectDetailsScreenState.data,
              action.visibility
              )
      );

}


