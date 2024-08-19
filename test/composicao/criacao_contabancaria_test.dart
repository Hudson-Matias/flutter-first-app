import 'package:firstapp/composicao/models/conta_bancaria.dart';
import 'package:firstapp/composicao/models/titular.dart';
import 'package:test/test.dart';

void main() {
  test('Deve criar uma conta bancaria com saldo inicial Zero', () {
    var contaBancaria = ContaBancaria(
      Titular.pessoaFisica("João"),
    );

    expect(contaBancaria.getSaldo(), 0.0);

    contaBancaria.depositar(200.0);

    expect(contaBancaria.getSaldo(), 200.0);
  });
}
