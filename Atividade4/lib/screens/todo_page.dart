import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/todo_provider.dart';
import '../widgets/tarefa_tile.dart';

class TodoPage extends ConsumerStatefulWidget {
  const TodoPage({super.key});

  @override
  ConsumerState<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends ConsumerState<TodoPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final tarefas = ref.watch(todoProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Tarefas')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Nova Tarefa',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(todoProvider.notifier).adicionar(controller.text);
              controller.clear();
            },
            child: const Text('Adicionar'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tarefas.length,
              itemBuilder: (context, index) {
                return TarefaTile(
                  tarefa: tarefas[index],
                  onToggle: () =>
                      ref.read(todoProvider.notifier).alternar(index),
                  onDelete: () =>
                      ref.read(todoProvider.notifier).remover(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}