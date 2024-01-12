import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:kanban_studio/colors.dart';
import 'package:kanban_studio/redux/actions/project_screen_actions.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:redux/redux.dart';


class Project extends StatelessWidget {

  final int id;
  final String name;
  final String ownerEmail;

  const Project({required this.id,required this.name,required this.ownerEmail});

  @override
  Widget build(BuildContext context) {
    return ListTile(
            onTap: (){
              
              StoreProvider.of<AppState>(context)
                                                  .dispatch(NavigateToProjectDetailsScreenAction(id,name,context));
            },
            title: Text(name),
            shape: Border(
              top: BorderSide(width: 1.0, color: Colors.black), // El borde superior
              //bottom: BorderSide(width: 1.0, color: Colors.black), // El borde inferior
            ),
          );
  }


}

