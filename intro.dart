class Aluno {
  final String nome;
  final String matricula;
  final String curso;
  String? email; // pode ser nulo

  Aluno({
    required this.nome,
    required this.matricula,
    required this.curso,
    this.email,
  });

  void mostrarDados() {
    print('Nome: $nome');
    print('Matrícula: $matricula');
    print('Curso: $curso');

    if (email != null) {
      print('Email: $email');
    }

    print('------------------------');
  }
}

void main() {
  final alunos = <Aluno>[
    Aluno(
      nome: 'Miguel',
      matricula: '20230001',
      curso: 'Ciência da Computação',
      email: 'miguel@email.com',
    ),
    Aluno(
      nome: 'Ana',
      matricula: '20230002',
      curso: 'Ciência da Computação',
    ),
    Aluno(
      nome: 'João',
      matricula: '20230003',
      curso: 'Sistemas de Informação',
    ),
  ];

  for (final aluno in alunos) {
    aluno.mostrarDados();
  }
}