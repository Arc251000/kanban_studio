import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/data/project_entity.dart';

class ProjectScreenState extends ViewState{
  

  List<ProjectEntity> projects;
 

  ProjectScreenState(this.projects);


  List<ProjectEntity> ownedProjects(){
      return projects.where((project) => project.owner==userEmail).toList();
  }

  List<ProjectEntity> joinedProjects(){
      return projects.where((project) => project.owner!=userEmail).toList();
  }


}