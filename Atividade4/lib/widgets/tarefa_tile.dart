import 'package:flutter/material.dart';
import '../models/tarefa.dart';

class TarefaTile extends StatelessWidget {
  final Tarefa tarefa;
  final VoidCallback onToggle;
  final VoidCallback onDelete;

  const TarefaTile({
    super.key,
    required this.tarefa,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tarefa.nome,
        style: TextStyle(
          decoration:
              tarefa.concluida ? TextDecoration.lineThrough : null,
        ),
      ),
      leading: Checkbox(
        value: tarefa.concluida,
        onChanged: (_) => onToggle(),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: onDelete,
      ),
    );
  }
}