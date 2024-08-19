import 'package:firstapp/composicao/models/enums/tipo_pessoa.dart';
import 'package:firstapp/composicao/models/pessoa.dart';

class Titular extends Pessoa {
  final String _nome;
  late TipoPessoa _tipoPessoa;
  // final ele pode receber um valor na instancia da classe.
  // Sou obrigado a passar o tipo da pessoa neste caso.

  Titular(this._tipoPessoa, this._nome);

  Titular.pessoaFisica(this._nome) {
    _tipoPessoa = TipoPessoa.fisica;
  }
  Titular.pessoaJuridica(this._nome) {
    _tipoPessoa = TipoPessoa.juridica;
  }

  @override
  TipoPessoa getTipo() {
    return _tipoPessoa;
  }

  @override
  String getNome() {
    return _nome;
  }
}
