import 'package:flutter_test/flutter_test.dart';

bool isPerfect(int num) {
  if (num < 1) return false;
  int sum = 0;
  for (int i = 1; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      sum += i;
    }
  }
  return sum == num;
}

void main() {
  group('Testes de Número perfeito', () {
    test('Número perfeito 6', () {
      expect(isPerfect(6), isTrue);
    });

    test('Número negativo não deve ser perfeito', () {
      expect(isPerfect(-6), isFalse);
    });
  });

  group('Testes de Soma dos dígitos', () {
    test('Soma dos dígitos de 123', () {
      expect(sumOfDigits(123), equals(6));
    });
    test('Soma dos dígitos de -1', () {
      expect(sumOfDigits(-1), throwsArgumentError);
    });
  });

  bool isPrime(int num) {
    // Verifica se o número é menor que 2, caso seja, não é primo
    if (num <= 1) {
      return false;
    }

    // Verifica se o número é divisível por qualquer número entre 2 e a raiz quadrada do número
    for (int i = 2; i <= num ~/ 2; i++) {
      if (num % i == 0) {
        return false; // Se divisível, não é primo
      }
    }

    return true; // Caso não seja divisível por nenhum número, é primo
  }
}
