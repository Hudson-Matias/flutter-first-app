import 'package:firstapp/exercicio/calculadora.dart';
import 'package:test/test.dart';

void main() {
  test('Deve calcular media', () {
    var resultado = calcularMedia({
      'Matemática': [30, 45, 67, 42]
    });
    expect(resultado.keys.first, 'Matemática');
    expect(resultado.values.first, 46);
  });
}
