import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:kanban_studio/colors.dart';
import 'package:kanban_studio/redux/actions/project_details_screen_action.dart';
import 'package:kanban_studio/redux/app_state.dart';


class Task extends StatelessWidget {
  
  final int id;
  final String resume;
  final String description;

  const Task({required this.id,required this.resume,required this.description});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>{
 
          StoreProvider.of<AppState>(context)
                         .dispatch(NavigateToFullTaskAction(id,resume,description,context))

      },
      child: Container(
      
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        resume,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    );
  }
}