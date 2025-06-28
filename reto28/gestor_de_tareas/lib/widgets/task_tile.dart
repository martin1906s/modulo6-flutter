import 'package:flutter/material.dart';
import 'package:gestor_de_tareas/models/tarea.dart';

class TaskTile extends StatelessWidget {
  final Tarea tarea;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  const TaskTile({
    super.key,
    required this.tarea,
    required this.onDelete,
    required this.onEdit,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        title: Text(tarea.title),
        subtitle: Text('${tarea.descripcion}\nEstado: ${tarea.status}\nFecha Limite: ${tarea.dueDate}'),
        
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(onPressed: onEdit, icon: Icon(Icons.edit)),
            IconButton(onPressed: onDelete, icon: Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
