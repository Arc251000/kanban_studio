import 'package:kanban_studio/redux/actions/full_task_actions.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/states/project_details_screen_state.dart';


AppState takeTaskReducer(AppState state, TakeTaskAction action) {
      
      return state.copyWith(
        newProjectDetailsScreenState: ProjectDetailsScreenState(
              state.projectDetailsScreenState.projectId,
              action.tasks,
              ProjectDetailsScreenCreateTaskState(state.projectDetailsScreenState.data.resume, state.projectDetailsScreenState.data.description,),
              state.projectDetailsScreenState.isPopUpVisible
              )
      );

}


AppState testTaskReducer(AppState state, TestTaskAction action) {
      
      return state.copyWith(
        newProjectDetailsScreenState: ProjectDetailsScreenState(
              state.projectDetailsScreenState.projectId,
              action.tasks,
              ProjectDetailsScreenCreateTaskState(state.projectDetailsScreenState.data.resume, state.projectDetailsScreenState.data.description,),
              state.projectDetailsScreenState.isPopUpVisible
              )
      );

}


AppState completeTaskReducer(AppState state, CompleteTaskAction action) {
      
      return state.copyWith(
        newProjectDetailsScreenState: ProjectDetailsScreenState(
              state.projectDetailsScreenState.projectId,
              action.tasks,
              ProjectDetailsScreenCreateTaskState(state.projectDetailsScreenState.data.resume, state.projectDetailsScreenState.data.description,),
              state.projectDetailsScreenState.isPopUpVisible
              )
      );

}


AppState dropTaskReducer(AppState state, DropTaskAction action) {
      
      return state.copyWith(
        newProjectDetailsScreenState: ProjectDetailsScreenState(
              state.projectDetailsScreenState.projectId,
              action.tasks,
              ProjectDetailsScreenCreateTaskState(state.projectDetailsScreenState.data.resume, state.projectDetailsScreenState.data.description,),
              state.projectDetailsScreenState.isPopUpVisible
              )
      );

}


AppState deleteTaskReducer(AppState state, DeleteTaskAction action) {
      
      return state.copyWith(
        newProjectDetailsScreenState: ProjectDetailsScreenState(
              state.projectDetailsScreenState.projectId,
              action.tasks,
              ProjectDetailsScreenCreateTaskState(state.projectDetailsScreenState.data.resume, state.projectDetailsScreenState.data.description,),
              state.projectDetailsScreenState.isPopUpVisible
              )
      );

}




