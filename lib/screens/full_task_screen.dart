import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:kanban_studio/colors.dart';
import 'package:kanban_studio/redux/actions/project_details_screen_action.dart';
import 'package:kanban_studio/redux/actions/project_screen_actions.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/data/project_entity.dart';
import 'package:kanban_studio/widgets/full_task.dart';
import 'package:kanban_studio/widgets/kanban_studio_scaffold.dart';
import 'package:kanban_studio/widgets/widgetslist/news_list.dart';
import 'package:kanban_studio/widgets/widgetslist/notification_list.dart';
import 'package:kanban_studio/widgets/widgetslist/project_list.dart';
import 'package:kanban_studio/widgets/widgetslist/task_horizontal_list.dart';

class FullTaskScreen extends StatelessWidget {
  
  final int id;
  final String resume;
  final String description;
  final String status;

  FullTaskScreen(this.id,this.resume,this.description, this.status);

  @override
  Widget build(BuildContext context) {
    
    

    return StoreConnector<AppState, AppState>(

      converter: (store) => store.state,

      builder: (context, state) {

        return Scaffold(
                          appBar: AppBar( 
                                      backgroundColor: primary,
                                      iconTheme: IconThemeData(color:textPrimary),
                            ),
                          
                          
                          body:FullTask(id: id, resume: resume, description: description, status: status),
                           
  
                        );

      }
    );
  }
}
