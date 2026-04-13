# 📱 Desenvolvimento Mobile - UniCesumar

---

## 👤 Alunos
* **Nome:** Ronaldo Dranski
* **Nome:** Nefertiti Kruger
* **Nome:** Marcos Cardozo
* **Nome:** Luis Gustavo Moraes Kadanus
* **Curso:** Análise e Desenvolvimento de Sistemas

## 📝 Descrição
Este respositório contém as atividades desenvolvidas na disciplina de Programação Mobile.

---

## 📂 Atividade 1

### Atividade 1: Hello World em Dart
* **Objetivo:** Validar a configuração do SDK e execução via terminal.

### 🚀 Como Executar a Atividade 1
1. Certifique-se de ter o **Dart SDK** instalado.
2. Abra o terminal na raiz deste repositório.
3. Execute o comando:

```bash
  dart run Atividade1/main.dart
```

### 💻 Saída Esperada

```
  Hello World
```

-----

## Trabalho 2 - CRUD de Biblioteca em Dart utilizando Orientação a Objetos

### Descrição do Sistema

Um sistema de gerenciamento de biblioteca via terminal que permite realizar as operações básicas de um CRUD (Criar, Listar, Atualizar e Remover livros).

### Classes Utilizadas

  * **Livro:** Classe responsável por moldar o objeto do livro. Possui atributos como titulo, autor, anoPublicacao e id (ou ISBN), utilizando construtores para inicialização.
  * **Biblioteca (ou Main):** Responsável por gerenciar a lista de objetos do tipo Livro e conter os métodos do menu interativo.

### Instruções para Execução

1.  Acesse a pasta do trabalho 2 no terminal.
2.  Execute o comando:
    ```bash
    dart main.dart
    ```

### Exemplos de Uso (Menu)

Ao rodar o programa, você verá as seguintes opções para interagir no terminal:

```text
1 - Cadastrar livro
2 - Listar livros
3 - Atualizar livro
4 - Remover livro
5 - Sair
```

-----

## Trabalho 3 - Aplicação de Calculadora em Flutter utilizando Componentização

### Descrição da Aplicação

Aplicativo funcional de calculadora simples desenvolvido em Flutter, permitindo realizar operações de adição, subtração, multiplicação e divisão com interface gráfica.

### Estrutura de Componentes

A interface foi dividida em widgets menores e reutilizáveis para melhor manutenção do código:

  * **DisplayWidget:** Tela que exibe os números digitados e o resultado das operações.
  * **BotaoWidget:** Botão padrão componentizado que recebe parâmetros de cor, texto e a função de clique para ser reutilizado tanto em números quanto em operadores.

### Instruções para Execução

1.  Certifique-se de ter o Flutter configurado em sua máquina.
2.  Acesse a pasta do trabalho 3 no terminal.
3.  Execute o comando:
    ```bash
    flutter run
    ```

### Prints da Interface

-----

## Trabalho 4 - Aplicação de Lista de Tarefas com Gestão de Estado

### Descrição da Aplicação

Um aplicativo de lista de tarefas (To-Do List) funcional em Flutter que permite criar, visualizar, marcar como concluídas e remover tarefas.

### Implementação da Gestão de Estado

A aplicação utiliza o pacote Riverpod para gerenciar os estados.

  * Um StateNotifierProvider (ou similar) foi utilizado para gerenciar o estado da lista de tarefas.
  * Ele garante que a interface do ListView.builder seja atualizada em tempo real sempre que uma tarefa for adicionada, removida ou alterada visualmente como concluída.

### Instruções para Execução

1.  Certifique-se de ter o Flutter configurado.
2.  Acesse a pasta do trabalho 4 no terminal.
3.  Garanta que as dependências do Riverpod estejam baixadas rodando `flutter pub get`.
4.  Execute o comando:
    ```bash
    flutter run
    ```
