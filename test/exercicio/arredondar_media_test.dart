import 'package:firstapp/exercicio/arredondar_media.dart';
import 'package:firstapp/exercicio/calculadora.dart';
import 'package:test/test.dart';

void main() {
  test('deve arredondar numeros para multiplos de 5', () {
    expect(arredondaMedia(84), 85);
    expect(arredondaMedia(57), 57);
    expect(arredondaMedia(58), 60);
    expect(arredondaMedia(59), 60);
    expect(arredondaMedia(60), 60);
  });

  test('cenário de alunos', () {
    Map<String, Map<String, List<int>>> alunos = {
      'João': {
        'Matemática': [30, 45, 67, 42],
        'História': [35, 37, 30, 46],
        'Ciências': [73, 65, 79, 83],
      },
      'Joaquim': {
        'Matemática': [],
        'História': [],
        'Ciências': [],
      },
      'Manuel': {
        'Matemática': [],
        'História': [],
        'Ciências': [],
      },
    };

    alunos.forEach((key, value) {
      var mediaDisciplina = calcularMedia(value);
      value.forEach((d, notas) {
        int notaFinal = arredondaMedia(mediaDisciplina.values.first);
      });
    });
  });
}
