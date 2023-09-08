import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  while (true) {
    print('Calculadora em Dart');
    print('Escolha a opção desejada: ');
    print('1 - Adição');
    print('2 - Subtração');
    print('3 - Multiplicação');
    print('4 - Divisão');
    print('5 - Sair');

    var line = stdin.readLineSync(encoding: utf8);
    var escolha = int.parse(line ?? "0");

    if (escolha == 5) {
      print('Encerrando aplicação');
      break;
    }

    print('Digite o primeiro número: ');
    line = stdin.readLineSync(encoding: utf8);
    var num1 = double.parse(line ?? "0");

    print('Digite o segundo número: ');
    line = stdin.readLineSync(encoding: utf8);
    var num2 = double.parse(line ?? "0");

    double resultado = 0;

    switch (escolha) {
      case 1:
        resultado = num1 + num2;
        break;
      case 2:
        resultado = num1 - num2;
        break;
      case 3:
        resultado = num1 * num2;
        break;
      case 4:
        if (num2 != 0) {
          resultado = num1 / num2;
        } else {
          print('Não é possível dividir por 0');
          continue;
        }
        break;
      case 5:
        break;
      default:
        print('Opção inválida');
        continue;
    }

    print('Resultado: $resultado');
    break;
  }
}
