import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:kanban_studio/colors.dart';
import 'package:kanban_studio/redux/actions/project_details_screen_action.dart';
import 'package:kanban_studio/redux/actions/project_screen_actions.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/data/project_entity.dart';
import 'package:kanban_studio/widgets/kanban_studio_scaffold.dart';
import 'package:kanban_studio/widgets/widgetslist/news_list.dart';
import 'package:kanban_studio/widgets/widgetslist/notification_list.dart';
import 'package:kanban_studio/widgets/widgetslist/project_list.dart';
import 'package:kanban_studio/widgets/widgetslist/task_horizontal_list.dart';

class ProjectDetailsScreen extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    
    

    return StoreConnector<AppState, AppState>(

      converter: (store) => store.state,

      builder: (context, state) {

        return Scaffold(
                          appBar: AppBar( 
                              title: Text(
                                        "",
                                        style: TextStyle(color: textPrimary), // Establece el color del texto a negro
                                      ), 
                                      backgroundColor: primary,
                                      iconTheme: IconThemeData(color:textPrimary),
                                      actions: <Widget>[ 
                                        IconButton( icon: Icon(Icons.add), onPressed: () {
                                          
                                          StoreProvider.of<AppState>(context)
                                                            .dispatch(ChangeCreateTaskPopUpVisibilityAction(!state.projectDetailsScreenState.isPopUpVisible));
                                  
                                        }, 
                                      ), 
                                      IconButton( icon: Icon(Icons.manage_accounts), onPressed: () {showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: Text('Inserte el email del usuario que desea agregar'),
                                                    content: TextField(
                                                      
                                                      onSubmitted: (value) {
                                                        
                                                        StoreProvider.of<AppState>(context)
                                                            .dispatch(InviteUserToProjectAction(state.projectDetailsScreenState.projectId,value));
                                                          Navigator.of(context).pop();
                                                      },
                                                    ),
                                                    actions: [
                                                              TextButton(
                                                                onPressed: () {
                                                                  Navigator.of(context).pop();
                                                                },
                                                                child: Text('Cancel'),
                                                              ),
                                                            ],
                                                    );
                                                  },
                                                );


                                        }, 
                                      )
                                ], 
                            ),
                          
                          
                          body: state.projectDetailsScreenState.isPopUpVisible? CreateTaskDialogextends()
                          :ListView.separated(
                          itemCount: 4, // El número de elementos de la lista
                          itemBuilder: (context, index) {
                            
                            
                              return  ExpansionTile(

                                          title: index==0? Text("Sin Hacer")
                                            :index==1?Text("Haciendo")
                                            :index==2?Text("Probando")
                                            :Text("Hecho"), 
                                          
                                          
                                          //expandedCrossAxisAlignment: CrossAxisAlignment.start,
                                          shape: const Border(
                                                bottom: BorderSide(width: 1.0, color: Colors.black),
                                              ),

                                          children: [
                                            index==0? TaskHorizontalList( state.projectDetailsScreenState.undoneTasks())
                                            :index==1?TaskHorizontalList( state.projectDetailsScreenState.processingTasks())
                                            :index==2?TaskHorizontalList( state.projectDetailsScreenState.testingTasks())
                                            :TaskHorizontalList( state.projectDetailsScreenState.doneTasks()),
                                           
                                            ]);
                            },
                          separatorBuilder: (context, index) {
                            // La función que construye el widget separador
                            return Divider(
                              color: Colors.grey, // El color de la línea
                              thickness: 1.0, // El grosor de la línea
                            );
                          },
                        )
                        );

      }
    );
  }
}



class CreateTaskDialogextends extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    
        return  StoreConnector<AppState, AppState>(

      converter: (store) => store.state,

      builder: (context, state) {

        return AlertDialog(
                                                    
                                                    
                                                    content: Column(
                                                        children: [
                                                          Text('Inserte un resumen de la tarea'),
                                                          TextField(
                                                        onChanged: (value){
                                                          StoreProvider.of<AppState>(context)
                                                            .dispatch(CreateTaskUpdateResumeAction(value));
                                                        },
                                                        
                                                      ),
                                                      Text('Inserte la descripcion de la tarea'),
                                                      TextField(
                                                        
                                                        onChanged: (value){

                                                          
                                                          StoreProvider.of<AppState>(context)
                                                            .dispatch(CreateTaskUpdateDescriptionAction(value));
                                                            
                                                        },
                                                      ),
                                                      ],
                                                    ),
                                                    actions: [
                                                              TextButton(
                                                                onPressed: () {


                                                                  StoreProvider.of<AppState>(context)
                                                                        .dispatch(CreateTaskAction(
                                                                          state.projectDetailsScreenState.data.resume,
                                                                          state.projectDetailsScreenState.data.description,
                                                                          state.projectDetailsScreenState.projectId
                                                                        ));

                                                                  StoreProvider.of<AppState>(context)
                                                                      .dispatch(CreateTaskUpdateResumeAction(""));

                                                                  StoreProvider.of<AppState>(context)
                                                                          .dispatch(CreateTaskUpdateDescriptionAction(""));
                                                                          
                                                                  StoreProvider.of<AppState>(context)
                                                                          .dispatch(ChangeCreateTaskPopUpVisibilityAction(false));
                                                                },
                                                                child: Text('Aceptar'),
                                                              ),
                                                              TextButton(
                                                                onPressed: () {
                                                                  StoreProvider.of<AppState>(context)
                                                                      .dispatch(CreateTaskUpdateResumeAction(""));

                                                                  StoreProvider.of<AppState>(context)
                                                                          .dispatch(CreateTaskUpdateDescriptionAction(""));

                                                                  StoreProvider.of<AppState>(context)
                                                                          .dispatch(ChangeCreateTaskPopUpVisibilityAction(false));
                                                                 
                                                                },
                                                                child: Text('Cancel'),
                                                              ),
                                                            ],
                                                    );
        }
      );
  }


}
/*

*/