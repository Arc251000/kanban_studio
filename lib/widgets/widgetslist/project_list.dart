import 'package:flutter/material.dart';
import 'package:kanban_studio/colors.dart';
import 'package:kanban_studio/redux/data/project_entity.dart';
import 'package:kanban_studio/widgets/project.dart';
import 'dart:math' as math; 


class ProjectList extends StatelessWidget {
  final String text;
  final List<ProjectEntity> projects;

  ProjectList(this.text,this.projects);

  @override
  Widget build(BuildContext context) {


      return ExpansionTile(
                  title: Text(text), // El título del elemento
                      
                  shape: const Border(
                        bottom: BorderSide(width: 1.0, color: Colors.black),
                      ),

                  children: projects.map((project) => Project(id:project.id, name: project.name, ownerEmail: project.owner)).toList(),

                );
  }
}
