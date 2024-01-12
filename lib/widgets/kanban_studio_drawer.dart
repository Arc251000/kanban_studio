import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class KanbanStudioDrawer extends StatelessWidget {
  // Este widget es la raíz de la aplicación.
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Menú lateral'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Sección 1'),
            onTap: () {
              // Actualizar el estado de la aplicación
              // ...
              // Cerrar el menú lateral
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Sección 2'),
            onTap: () {
              // Actualizar el estado de la aplicación
              // ...
              // Cerrar el menú lateral
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Sección 3'),
            onTap: () {
              // Actualizar el estado de la aplicación
              // ...
              // Cerrar el menú lateral
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}










