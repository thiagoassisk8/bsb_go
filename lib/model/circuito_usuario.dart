class CircuitoUsuario {
  int raioMarcacao;
  Localizacao localizacao;
  String descricao;
  String nome;
  bool visitado;
  String circuito;
  int id;

  CircuitoUsuario(
      {this.raioMarcacao,
        this.localizacao,
        this.descricao,
        this.nome,
        this.visitado,
        this.circuito,
        this.id});

  CircuitoUsuario.fromJson(Map<String, dynamic> json) {
    raioMarcacao = json['raio_marcacao'];
    localizacao = json['localizacao'] != null
        ? new Localizacao.fromJson(json['localizacao'])
        : null;
    descricao = json['descricao'];
    nome = json['nome'];
    visitado = json['visitado'];
    circuito = json['circuito'];
    id = json['id'];
  }

}

class Localizacao {
  double dLatitude;
  double dLongitude;

  Localizacao({this.dLatitude, this.dLongitude});

  Localizacao.fromJson(Map<String, dynamic> json) {
    dLatitude = json['_latitude'];
    dLongitude = json['_longitude'];
  }

}