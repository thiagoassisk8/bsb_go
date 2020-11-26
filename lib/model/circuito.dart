class Circuito {
  String id;
  String nome;
  String descricao;
  int pontuacao;

  Circuito({this.id, this.nome, this.descricao, this.pontuacao});

  Circuito.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    descricao = json['descricao'];
    pontuacao = json['pontuacao'];
  }

}