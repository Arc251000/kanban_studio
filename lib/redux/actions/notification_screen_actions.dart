import 'package:flutter/material.dart';
import 'package:kanban_studio/redux/actions.dart';
import 'package:kanban_studio/redux/data/project_entity.dart';
import 'package:kanban_studio/redux/data/task_entity.dart';

class AcceptInvitationAction extends AppAction {
  
  
  final String url;
  late List<ProjectEntity> projects;

  AcceptInvitationAction(this.url);

}