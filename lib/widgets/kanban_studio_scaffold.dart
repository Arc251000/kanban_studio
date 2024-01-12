import 'package:flutter/material.dart';
import 'package:kanban_studio/colors.dart';
import 'package:kanban_studio/widgets/kanban_studio_bottom_navigator_bar.dart';
import 'package:kanban_studio/widgets/kanban_studio_drawer.dart';


class KanbanStudioScaffold extends StatelessWidget {
  
  final String title;
  final Widget child;
  final AppBar? appbar;


  KanbanStudioScaffold({required this.title,required this.child,this.appbar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar??AppBar(
        title: Text(
            title,
            style: TextStyle(color: textPrimary), // Establece el color del texto a negro
          ),
        backgroundColor: primary,
        iconTheme: IconThemeData(color:textPrimary),
        
      ),
      drawer: KanbanStudioDrawer(), // El menú lateral
      body: child, 
      bottomNavigationBar: KanbanStudioBotomNavigationBar(),// El menú inferior
    );
  }
}
