
import 'package:flutter/material.dart';
import 'package:kanban_studio/redux/actions.dart';
import 'package:kanban_studio/redux/data/project_entity.dart';
import 'package:kanban_studio/redux/data/task_entity.dart';


class CreateProjectAction extends AppAction {


  final String name;
  late List<ProjectEntity> projects;

  CreateProjectAction( this.name);

}


class NavigateToProjectDetailsScreenAction extends AppAction {
  
  final int id;
  final String name;
  final BuildContext context;
  late List<TaskEntity> tasks;

  NavigateToProjectDetailsScreenAction(this.id, this.name, this.context);

}