import 'package:firstapp/composicao/models/titular.dart';

class ContaBancaria {
  // int _numeroConta;
  double _saldo = 0.0;
  Titular _titular;

  ContaBancaria(this._titular);

  double getSaldo() {
    return _saldo;
  }

  void depositar(double valor) {
    _saldo += valor;
  }
}
