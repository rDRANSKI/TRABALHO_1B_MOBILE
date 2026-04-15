import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/tarefa.dart';

class ListaTarefasNotifier extends StateNotifier<List<Tarefa>> {
  ListaTarefasNotifier() : super([]);

  void adicionar(String nome) {
    if (nome.trim().isEmpty) return;
    state = [...state, Tarefa(nome)];
  }

  void alternar(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index)
          Tarefa(state[i].nome, concluida: !state[i].concluida)
        else
          state[i]
    ];
  }

  void remover(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i != index) state[i]
    ];
  }
}

final todoProvider =
    StateNotifierProvider<ListaTarefasNotifier, List<Tarefa>>(
        (ref) => ListaTarefasNotifier());