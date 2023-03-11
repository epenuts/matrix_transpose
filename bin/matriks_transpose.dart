import 'package:matriks_transpose/matriks_transpose.dart' as matriks_transpose;
import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  stdout.writeln('Matriks AxB');
  stdout.write('A: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('B: ');
  int b = int.parse(stdin.readLineSync()!);
  matrix(a, b);
}

void matrix(int a, int b) {
  Random acak = Random();
  List<List<int>> matrix = [];
  for (int i = 0; i < a; i++) {
    List<int> baris = [];
    for (int j = 0; j < b; j++) {
      baris.add(acak.nextInt(9));
    }
    matrix.add(baris);
  }
  print("isi matriks:");
  for (var i = 0; i < a; i++) {
    for (var j = 0; j < b; j++) {
      stdout.write('${matrix[i][j]} ');
    }
    print(' ');
  }

  print("hasil transpose:");
  for (var i = 0; i < b; i++) {
    for (var j = 0; j < a; j++) {
      stdout.write('${matrix[j][i]} ');
    }
    print('');
  }
}
