import 'package:flutter/material.dart';
import 'package:kanban_studio/colors.dart';
import 'package:kanban_studio/redux/data/task_entity.dart';
import 'package:kanban_studio/widgets/task.dart';


class TaskHorizontalList extends StatelessWidget {
  
  final List<TaskEntity> texts;

  TaskHorizontalList( this.texts);

  // Este widget es la raíz de la aplicación.
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
              child:
                LimitedBox(
                  maxWidth: (texts.length/2+1)*150 + (texts.length/2+1)*10 + 3,
                  maxHeight: 315,
                child:CustomMultiChildLayout(
                  delegate: TwoRowsDelegate(texts.length, 5), // el delegado que define el diseño
                  children: texts
                      .asMap()
                      .entries
                      .map(
                        (entry) => LayoutId(
                          id: entry.key, 
                          child: Task(id:entry.value.id,resume: entry.value.resume, description: entry.value.description,),
                        ),
                      )
                      .toList(),
                ),
                )
          
    );
  }
}


class TwoRowsDelegate extends MultiChildLayoutDelegate {
  final int count; // el número de hijos
  final double size; // el tamaño de los hijos

  TwoRowsDelegate(this.count, this.size);

  @override
  void performLayout(Size size) {
    // el tamaño disponible para el layout
    for (int i = 0; i < count; i++) {
      // iteramos sobre cada hijo
      final childSize = layoutChild(i, BoxConstraints.loose(size)); // obtenemos el tamaño del hijo
      final row = i % 2; // calculamos la fila del hijo
      final column = i ~/ 2; // calculamos la columna del hijo
      final x = column * childSize.width + column*10; // calculamos la posición x del hijo
      final y = row * childSize.height + row*10; // calculamos la posición y del hijo
      positionChild(i, Offset(x, y)); // posicionamos el hijo
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return false;
  }
}