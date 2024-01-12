import 'package:flutter/material.dart';
import 'package:kanban_studio/redux/actions.dart';
import 'package:kanban_studio/redux/data/task_entity.dart';


class CreateTaskAction extends AppAction {


    final String resume;
    final String description;
    final int projectId;
    late List<TaskEntity> tasks;


  CreateTaskAction(this.resume, this.description,  this.projectId);

}


class CreateTaskUpdateResumeAction extends AppAction {

  final String resume;

  CreateTaskUpdateResumeAction(this.resume);

}


class CreateTaskUpdateDescriptionAction extends AppAction {

  final String description;

  CreateTaskUpdateDescriptionAction(this.description);

}

class ChangeCreateTaskPopUpVisibilityAction extends AppAction {

  final bool visibility;

  ChangeCreateTaskPopUpVisibilityAction(this.visibility);

}


class NavigateToFullTaskAction extends AppAction {

  final int taskId;
  final String resume;
  final String description;
  final BuildContext context;
  
  NavigateToFullTaskAction(this.taskId,this.resume,this.description, this.context);

}


class InviteUserToProjectAction extends AppAction {

  final int projectId;
  final String email;
  
  
  InviteUserToProjectAction(this.projectId,this.email);

}



