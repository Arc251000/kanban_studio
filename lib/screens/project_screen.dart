import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:kanban_studio/colors.dart';
import 'package:kanban_studio/redux/actions/project_screen_actions.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/data/project_entity.dart';
import 'package:kanban_studio/widgets/kanban_studio_scaffold.dart';
import 'package:kanban_studio/widgets/widgetslist/news_list.dart';
import 'package:kanban_studio/widgets/widgetslist/notification_list.dart';
import 'package:kanban_studio/widgets/widgetslist/project_list.dart';

class ProjectsScreen extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    


    return StoreConnector<AppState, AppState>(

      converter: (store) => store.state,

      builder: (context, state) {

        return KanbanStudioScaffold(title: "",
                          appbar: AppBar( 
                              title: Text(
                                        "Proyectos",
                                        style: TextStyle(color: textPrimary), // Establece el color del texto a negro
                                      ), 
                                      backgroundColor: primary,
                                      iconTheme: IconThemeData(color:textPrimary),
                                      actions: <Widget>[ 
                                        IconButton( icon: Icon(Icons.add), onPressed: () {showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: Text('Inserte el nombre'),
                                                    content: TextField(
                                                      
                                                      onSubmitted: (value) {
                                                        
                                                      StoreProvider.of<AppState>(context)
                                                          .dispatch(CreateProjectAction(value));
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
                                      ), 
                                ], 
                            ),
                          
                          child: ListView.separated(
                          itemCount: 2, // El número de elementos de la lista
                          itemBuilder: (context, index) {
                            
                            return index==0? ProjectList("Tus proyectos", state.projectScreenState.ownedProjects())
                            : ProjectList("Proyectos a los que te has unido", state.projectScreenState.joinedProjects());
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
