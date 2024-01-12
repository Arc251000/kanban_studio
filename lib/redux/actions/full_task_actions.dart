import 'package:flutter/material.dart';
import 'package:kanban_studio/redux/actions.dart';
import 'package:kanban_studio/redux/data/project_entity.dart';
import 'package:kanban_studio/redux/data/task_entity.dart';


class TakeTaskAction extends AppAction {

  final int taskId;
  late List<TaskEntity> tasks;

  TakeTaskAction( this.taskId);

}

class TestTaskAction extends AppAction {

  final int taskId;
  late List<TaskEntity> tasks;

  TestTaskAction( this.taskId);

}


class CompleteTaskAction extends AppAction {

  final int taskId;
  late List<TaskEntity> tasks;

  CompleteTaskAction( this.taskId);

}



class DropTaskAction extends AppAction {

  final int taskId;
  late List<TaskEntity> tasks;

  DropTaskAction( this.taskId);

}


class DeleteTaskAction extends AppAction {

  final int taskId;
  late List<TaskEntity> tasks;

  DeleteTaskAction( this.taskId);

}

