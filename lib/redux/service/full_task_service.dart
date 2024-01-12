import 'package:kanban_studio/redux/actions/project_details_screen_action.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:http/http.dart';
import 'package:kanban_studio/redux/data/task_entity.dart';
import 'dart:convert';
import 'package:kanban_studio/redux/service/http_utils.dart';



Future<Response> takeTask(int taskId) async {

      return await httpPost('${server}/task/state/processing?taskId=${taskId}',{});

}


Future<Response> testTask(int taskId) async {

      return await httpPost('${server}/task/state/testing?taskId=${taskId}',{});

}


Future<Response> completeTask(int taskId) async {

      return await httpPost('${server}/task/state/done?taskId=${taskId}',{});

}


Future<Response> dropTask(int taskId) async {

      return await httpPost('${server}/task/state/undone?taskId=${taskId}',{});

}


Future<Response> deleteTask(int taskId) async {

      return await httpDelete('${server}/task/delete?taskId=${taskId}',{});

}