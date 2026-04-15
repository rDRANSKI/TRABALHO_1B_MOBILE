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

## 📂 [Atividade 2](https://github.com/rDRANSKI/TRABALHO_1B_MOBILE/tree/main/Atividade2): CRUD de Biblioteca com Orientação a Objetos

### 📝 Descrição do Sistema
Este sistema é uma aplicação de terminal desenvolvida em **Dart** para gerenciar uma biblioteca. Ele permite realizar as quatro operações básicas de um **CRUD**:
1. **Create:** Cadastrar novos livros.
2. **Read:** Listar todos os livros armazenados.
3. **Update:** Atualizar o título de um livro existente através do seu ID.
4. **Delete:** Remover um livro do sistema utilizando o ID.

### 🛠️ Classes Utilizadas
O Projeto segue os princípios da **Orientação a Objetos**:

* **Classe `Livro`**:
  * **Atributos**: `id` (identificador único), `titulo`, `autor` e `ano`.
  * **Construtor**: Responsável por inicializar os dados do objeto no momento do cadastro.
  * **Método `toString()`**: Sobrescrito (`@override`) para formatar a exibição dos dados no terminal de forma amigável.

### 🚀 Como Executar a Atividade 2
1. Certifique-se de que o **Dart SDK** está instalado em sua máquina.
2. Abra o terminal na raiz do projeto (`exemplo`).
3. Execute o seguinte comando:

```bash
dart run Atividade2/main.dart
```

### 💻 Exemplos de Uso
* **Menu Principal:** Ao iniciar, o sistema exibe opções numeradas de 1 a 5 para navegação.
* **Cadastro:** O sistema solicita Título, Autor e Ano. O ID é gerado automaticamente de forma sequencial.
* **Listagem:** Exibe a lista completa no formato: `ID: 1 | Título: Exemplo | Autor: Nome | Ano: 2024`
* **Atualização/Remoção:** O usuário informa o ID do livro desejado para modificar ou excluir.

-----

## 📂[Atividade 3](https://github.com/rDRANSKI/TRABALHO_1B_MOBILE/tree/main/Atividade3) - Aplicação de Calculadora em Flutter utilizando Componentização

### 📝 Descrição do Sistema
Calculadora simples desenvolvido em Flutter, com interface gráfica e suporte às quatro operações básicas.

### Funcionalidades
* Soma, subtração, multiplicação e divisão
* Limpar cálculo (C)
* Exibição da expressão e do resultado
* Suporte a números decimais

### 🛠️ Estrutura de Componentes
O código está organizado em componentes reutilizáveis:

* Calculadora: widget principal responsável pela lógica e estado
* DisplayCalc: exibe a expressão e o resultado
* BotaoNumero: botões numéricos
* BotaoOperacao: botões de operações

### 🚀 Instruções para Execução

1.  Certifique-se de ter o Flutter configurado em sua máquina.
2.  Acesse a pasta do trabalho 3 no terminal.
3.  Execute o comando:

  ```bash
    flutter run
  ```

### Prints da Interface

<img width="330" height="215" alt="image" src="https://github.com/user-attachments/assets/49c99f71-a74a-4828-afda-5b7a2a2b67f8" />


## 📂[Atividade 4](https://github.com/rDRANSKI/TRABALHO_1B_MOBILE/tree/main/Atividade4) - Lista de Tarefas (Flutter + Riverpod)

### 📝 Descrição do Sistema
Este projeto é uma aplicação mobile de **Lista de Tarefas (To-Do List)** desenvolvida com o framework **Flutter**. O objetivo principal é demonstrar a gestão de estado reativa utilizando a biblioteca **Riverpod**, permitindo ao usuário gerenciar suas atividades diárias de forma simples e intuitiva.

### 🛠️ Explicação das Classes e Componentes

#### 🧱 Estrutura do Projeto

O projeto foi organizado para separar responsabilidades:

- **models/** → classe Tarefa  
- **providers/** → gerenciamento de estado com Riverpod  
- **screens/** → telas da aplicação  
- **widgets/** → componentes reutilizáveis

Essa separação melhora a organização e manutenção do código.

#### 1. Modelo de Dados (`Tarefa`)
Uma classe simples que representa cada item da lista.
* **nome:** String que armazena a descrição da tarefa.
* **concluida:** Booleano que indica o status da tarefa (por padrão, iniciada como `false`).

#### 2. Gerenciamento de Estado (`ListaTarefasNotifier`)
Utiliza o `StateNotifier` para encapsular a lógica de negócio separada da interface:
* **adicionar(String nome)**: Cria uma nova instância de `Tarefa` e a adiciona à lista imutável.
* **alternar(int index)**: Inverte o status de conclusão de uma tarefa específica.
* **remover(int index)**: Filtra a lista para excluir a tarefa selecionada.

#### 3. Interface de Usuário (`TodoPage`)
A interface foi separada em diferentes componentes para melhor organização:
- **screens/**: tela principal da aplicação
- **widgets/**: componentes reutilizáveis (como o item da lista)
Utiliza ConsumerWidget/ConsumerStatefulWidget para observar mudanças no estado e atualizar a interface automaticamente.

### 🚀 Instruções para Execução
1. Certifique-se de ter o ambiente **Flutter** configurado em sua máquina.
2. Adicione as dependências necessárias no seu arquivo `pubspec.yaml`:

```yaml
  dependencies:
    flutter:
      sdk: flutter
    flutter_riverpod: ^2.5.1
```

3. Execute o comando para baixar os pacotes:

```bash
  flutter pub get
```

4. Inicie a aplicação no emulador ou dispositivo físico:

```bash
  flutter run
```

### 💻 Exemplos de Uso
* **Adicionar Tarefa:** Digite o nome no campo de texto e clique no botão "Adicionar".
* **Concluir Tarefa:** Clique no Checkbox ao lado do nome da tarefa. O texto será riscado automaticamente.
* **Excluir Tarefa:** Clique no ícone de lixeira (Icons.delete) à direita para remover o item da lista permanentemente.

### 📷 Demonstração do App

### 🏠 Tela inicial
<img width="504" height="196" alt="print1" src="https://github.com/user-attachments/assets/55005809-75dc-4fd4-b135-c9a4c6d04851" />

### ➕ Adicionando tarefa
<img width="503" height="207" alt="print adcc tarefa" src="https://github.com/user-attachments/assets/08253694-e63a-4e34-a97e-fbbb32f88f47" />

<img width="507" height="237" alt="print adc tarefa" src="https://github.com/user-attachments/assets/55d11137-c47b-45b0-acba-96917074bb20" />

### ✔️ Tarefa concluída

<img width="505" height="251" alt="print tarefa concluida" src="https://github.com/user-attachments/assets/33b37790-2c68-46a6-83ad-7e257e15ee6d" />


### 🗑️ Removendo tarefa

<img width="503" height="203" alt="print após remover tarefa" src="https://github.com/user-attachments/assets/88c885ba-72e2-4902-a73e-bb8a3ac08199" />


