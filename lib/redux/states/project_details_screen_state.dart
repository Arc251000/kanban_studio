import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/data/project_entity.dart';
import 'package:kanban_studio/redux/data/task_entity.dart';
import 'package:kanban_studio/widgets/task.dart';

class ProjectDetailsScreenState extends ViewState{
  
  int projectId;
  ProjectDetailsScreenCreateTaskState data;
  List<TaskEntity> tasks;
  bool isPopUpVisible;
 

  ProjectDetailsScreenState(this.projectId,this.tasks,this.data,this.isPopUpVisible);


  List<TaskEntity> undoneTasks(){
      return tasks.where((task) => task.state=="Undone").toList();
  }

  List<TaskEntity> processingTasks(){
        return tasks.where((task) => task.state=="Processing").toList();
    }

  List<TaskEntity> testingTasks(){
      return tasks.where((task) => task.state=="Testing").toList();
  }

  List<TaskEntity> doneTasks(){
      return tasks.where((task) => task.state=="Done").toList();
  }


}


class ProjectDetailsScreenCreateTaskState extends ViewState{

  String resume;
  String description;

  ProjectDetailsScreenCreateTaskState(this.resume,this.description);

}