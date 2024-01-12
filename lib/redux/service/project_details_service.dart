import 'package:kanban_studio/redux/actions/project_details_screen_action.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:http/http.dart';
import 'package:kanban_studio/redux/data/task_entity.dart';
import 'dart:convert';
import 'package:kanban_studio/redux/service/http_utils.dart';



Future<List<TaskEntity>> getProjectTasks(int projectId) async {

    
      Response response = await httpGet('${server}/projects/tasks?projectId=${projectId}');

      print(response.body);
      

      // Decodificar el objeto JSON y convertirlo en una lista
      List<dynamic> taskList = jsonDecode(response.body) as List<dynamic>;

      // Crear una lista vacía para almacenar los objetos NewsEntity
      List<TaskEntity> taskEntities = [];

      // Recorrer la lista y crear los objetos NewsEntity usando el método fromJson()
      for (dynamic news in taskList) {
        taskEntities.add(TaskEntity.fromJson(news));
      }


      return taskEntities;
     
      


}


Future<Response> createTaskService(CreateTaskAction data) async {


      Map<String,dynamic> json = {
                  "resume":data.resume,
                  "description":data.description,
                  "state":"undone",
                  "projectId":data.projectId
              };
    
      return await httpPost('${server}/task/create',json);

}


Future<Response> InviteUserToProjectService(String email, int projectId) async {

      return await httpPost('${server}/projects/join/request?email=${email}&projectId=${projectId}',{});

}







