import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/service/http_utils.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:kanban_studio/redux/data/project_entity.dart';



Future<List<ProjectEntity>> getProjects(int page) async {


      Response response = await httpGet('${server}/user/projects/owned?page=${page}');

      
      // Decodificar el objeto JSON y convertirlo en una lista
      List<dynamic> projectList = jsonDecode(response.body) as List<dynamic>;

      // Crear una lista vacía para almacenar los objetos NewsEntity
      List<ProjectEntity> projectsEntities = [];

      // Recorrer la lista y crear los objetos NewsEntity usando el método fromJson()
      for (dynamic news in projectList) {
        projectsEntities.add(ProjectEntity.fromJson(news,userEmail));
      }


      
      Response response2 = await httpGet('${server}/user/projects/joined?page=${page}');

      
      // Decodificar el objeto JSON y convertirlo en una lista
     projectList = jsonDecode(response2.body) as List<dynamic>;

      // Recorrer la lista y crear los objetos NewsEntity usando el método fromJson()
      for (dynamic news in projectList) {
        projectsEntities.add(ProjectEntity.fromJson(news,""));
      }



      return projectsEntities;
     
      


}




