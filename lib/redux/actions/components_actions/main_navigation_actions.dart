
import 'package:flutter/material.dart';
import 'package:kanban_studio/redux/actions.dart';
import 'package:kanban_studio/redux/data/news_entity.dart';
import 'package:kanban_studio/redux/data/project_entity.dart';


class NavigateToHomeAction extends AppAction {
  BuildContext context;
  late List<NewsEntity> news;
  
  NavigateToHomeAction(this.context);
}


class NavigateToNotificationScreenAction extends AppAction {
  BuildContext context;
  
  NavigateToNotificationScreenAction(this.context);
}


class NavigateToProjectsScreenAction extends AppAction {
  BuildContext context;
  late List<ProjectEntity> projects;
  
  NavigateToProjectsScreenAction(this.context);
}