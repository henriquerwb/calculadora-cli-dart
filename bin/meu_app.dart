import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print('Calculadora em Dart');
  print('1 - Adição');
  print('2 - Subtração');
  print('3 - Multiplicação');
  print('4 - Divisão');
  print('5 - Sair');

  var escolha = lerConsoleInt('Escolha a opção desejada:');

  if (escolha == 5) {
    print('Saindo do programa');
  }

  var num1 = lerConsoleDouble('Digite o primeiro número:');

  var num2 = lerConsoleDouble('Digite o segundo número:');

  calcular(escolha, num1, num2);
}

void calcular(int escolha, double num1, double num2) {
  double resultado = 0;
  switch (escolha) {
    case 1:
      resultado = somar(num1, num2);
      break;
    case 2:
      resultado = subtrair(num1, num2);
      break;
    case 3:
      resultado = multiplicar(num1, num2);
      break;
    case 4:
      resultado = dividir(num1, num2);
      break;
    case 5:
      break;
    default:
      print("Opção inválida!");
      exit(0);
  }
  print('Resultado da operação: $resultado');
}

double somar(double num1, double num2) {
  return num1 + num2;
}

double subtrair(double num1, double num2) {
  return num1 - num2;
}

double multiplicar(double num1, double num2) {
  return num1 * num2;
}

double dividir(double num1, double num2) {
  if (num2 == 0) {
    print('Não é possível dividir por 0');
    exit(0);
  } else {
    return num1 / num2;
  }
}

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double lerConsoleDouble(String texto) {
  var numero = double.tryParse(lerConsole(texto));
  if (numero == null) {
    print('Número inválido! Alternando para 0.');
    return 0.0;
  } else {
    return numero;
  }
}

int lerConsoleInt(String texto) {
  var numero = int.tryParse(lerConsole(texto));
  if (numero == null) {
    print('Número inválido! Alternando para 0.');
    return 5;
  } else {
    return numero;
  }
}
