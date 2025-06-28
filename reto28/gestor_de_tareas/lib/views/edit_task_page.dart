import 'package:flutter/material.dart';
import 'package:gestor_de_tareas/models/tarea.dart';
import '../services/databaseHelper.dart';

class EditTaskPage extends StatefulWidget {
  final Tarea tarea;
  const EditTaskPage({super.key, required this.tarea});

  @override
  State<EditTaskPage> createState() => _EditTaskPageState();
}

class _EditTaskPageState extends State<EditTaskPage> {
  late TextEditingController titleController;
  late TextEditingController descripcionController;
  late TextEditingController dueDateController;
  late String status;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.tarea.title);
    descripcionController = TextEditingController(text: widget.tarea.descripcion);
    dueDateController = TextEditingController(text: widget.tarea.dueDate);
    status = widget.tarea.status;
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Editar Tarea')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Título'),
            ),
            TextField(
              controller: descripcionController,
              decoration: const InputDecoration(labelText: 'Descripción'),
            ),
            DropdownButton<String>(
              value: status,
              items: ['Completado', 'Pendiente']
                  .map(
                    (s) => DropdownMenuItem<String>(value: s, child: Text(s)),
                  )
                  .toList(),
              onChanged: (val) => setState(() => status = val!),
            ),
            TextField(
              controller: dueDateController,
              readOnly: true,
              decoration: const InputDecoration(labelText: 'Fecha límite'),
              onTap: () async {
                FocusScope.of(context).requestFocus(FocusNode());
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (picked != null) {
                  dueDateController.text =
                      "${picked.year}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}";
                }
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final updateTask = Tarea(
                  id: widget.tarea.id,
                  title: titleController.text,
                  descripcion: descripcionController.text,
                  status: status,
                  dueDate: dueDateController.text,
                );
                await DatabaseHelper().updateTask(updateTask);
                Navigator.pop(context, true);
              },
              child: const Text('Actualizar'),
            ),
          ],
        ),
      ),
    );
  }
}
