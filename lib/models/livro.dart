class Livro {
  final String titulo;
  final String autor;
  final String isbn;
  final String editora;
  final String imagePath;

  const Livro(this.titulo, this.autor, this.isbn, this.editora, this.imagePath);
}


List<Livro> gerarLivrosAleatorios() {
  return [
    const Livro(
        'O Alquimista',
        'Paulo Coelho',
        '9789722524223',
        '11 X 17',
        'https://img.wook.pt/images/o-alquimista-paulo-coelho/MXwxNTIzNzEzOXwxMDcyNTQ3NXwxMzgzNTIzMjAwMDAwfHdlYnA=/502x'),
    const Livro(
        'Que número é este',
        'Ricardo Garcia, Luísa Barbosa e Maria João Valente Rosa',
        '9789898838889',
        'Fundação Francisco Manuel dos Santos',
        'https://img.wook.pt/images/que-numero-e-este-ricardo-garcia/MXwyNDAwNjIyNHwyMDA1MjUxN3wxNTg3NDIzNjAwMDAwfHdlYnA=/502x'),
    const Livro(
        '14 - Uma Vida nos Tectos do Mundo',
        'João Garcia',
        '9789892326153',
        'Lua de Papel',
        'https://img.wook.pt/images/14-uma-vida-nos-tectos-do-mundo-joao-garcia/MXwxNTcyNDIwNXwxMTIxOTMwMnwxMzk4OTg1MjAwMDAwfHdlYnA=/502x'),
    const Livro(
        'Planisfério Pessoal',
        'Gonçalo Cadilhe',
        '9789897242915',
        'Clube do Autor',
        'https://img.wook.pt/images/planisferio-pessoal-goncalo-cadilhe/MXwxNzgxNzY4M3wxMzQ1ODk0NnwxNDYwNDE1NjAwMDAwfHdlYnA=/502x'),
  ];
}
