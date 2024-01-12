import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:kanban_studio/colors.dart';
import 'package:kanban_studio/redux/actions/full_task_actions.dart';
import 'package:kanban_studio/redux/app_state.dart';


class FullTask extends StatelessWidget {
  
  final int id;
  final String resume;
  final String description;
  final String status;

  const FullTask({ required this.id, required this.resume, required this.description, required this.status});

  @override
  Widget build(BuildContext context) {
    return Card(child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [

              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {
                        showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                        
                                    content: Column(

                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [

                                                  ListTile(onTap: (){
                                                    
                                                    StoreProvider.of<AppState>(context)
                                                          .dispatch(TakeTaskAction(id));

                                                    Navigator.of(context).pop();
                                                        
                                                  }, title: Text("Tomar Tarea"),
                                                      shape: Border(
                                                      bottom: BorderSide(width: 1.0, color: const Color.fromRGBO(0, 0, 0, 1)), 
                                                    ),
                                                  ),


                                                  ListTile(onTap: (){
                                                    
                                                    StoreProvider.of<AppState>(context)
                                                          .dispatch(TestTaskAction(id));

                                                    Navigator.of(context).pop();

                                                  }, title: Text("Probar Tarea"),
                                                      shape: Border(
                                                      bottom: BorderSide(width: 1.0, color: Colors.black), 
                                                    ),
                                                  ),
                                                  
                                                  ListTile(onTap: (){
                                                    StoreProvider.of<AppState>(context)
                                                          .dispatch(CompleteTaskAction(id));

                                                    Navigator.of(context).pop();

                                                  }, title: Text("Finalizar Tarea"),
                                                      shape: Border(
                                                      bottom: BorderSide(width: 1.0, color: Colors.black), 
                                                    ),
                                                  ),


                                                  ListTile(onTap: (){

                                                    StoreProvider.of<AppState>(context)
                                                          .dispatch(DropTaskAction(id));

                                                    Navigator.of(context).pop();

                                                  }, title: Text("Regresar Tarea"),
                                                      shape: Border(
                                                      bottom: BorderSide(width: 1.0, color: Colors.black), 
                                                    ),
                                                  ),


                                                  ListTile(onTap: (){

                                                    StoreProvider.of<AppState>(context)
                                                          .dispatch(DeleteTaskAction(id));
                                                          
                                                    Navigator.of(context).pop();

                                                  }, title: Text("Eliminar Tarea"),
                                                      shape: Border(
                                                      bottom: BorderSide(width: 1.0, color: Colors.black), 
                                                    ),
                                                  ),


                                                  ListTile(onTap: (){

                                                    Navigator.of(context).pop();

                                                  }, title: Text("Cancelar"),
                                                      shape: Border(
                                                      bottom: BorderSide(width: 1.0, color: Colors.black), 
                                                    ),
                                                  ),
                                              ],)
                                          );
                          },
                        );
                    }
                  )
              ),
               

              Text(resume,
                style: TextStyle(fontSize: 24,),
               ),
              
              SizedBox(height: 10),
              Text(description,
              style: TextStyle(fontSize: 14,
                                color: textPrimary
                ),
              ),
              
            ]),

            
            ),

          elevation: 10, 
          shadowColor: const Color.fromARGB(255, 58, 58, 58),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
    ),
   
    );
  }
}

