import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('SZám: ');
  int? input = int.tryParse(stdin.readLineSync()!);

  input! % 2 == 0 ? print("Páros") : print("Páratlan");

  switch (input) {
    case 1:
      print("Egyes");
      break;
    case 2:
      print("Kettes");
      break;
    case 3:
      print("Hármas");
      break;
    case 4:
      print("Négyes");
      break;
    case 5:
      print("Ötös");
      break;
    default:
      print("Nem 1-5 közötti szám");
  }

  assert(input > 0 && input < 6, "Nem 1-5 közötti szám");
  

  stdout.write('SZám1: ');
  input = int.tryParse(stdin.readLineSync()!);
  stdout.write('SZám2: ');
  int? input2 = int.tryParse(stdin.readLineSync()!);

  if (input! > input2!) {
    print("Az első szám nagyobb");
  } else if (input < input2) {
    print("A második szám nagyobb");
  } else {
    print("Egyenlőek");
  }

  print((input-input2).abs().toString() + " a két szám különbsége");

print("adj meg számot");
 input = int.tryParse(stdin.readLineSync()!);

 if( input! %2 == 0){
  print("Páros");
 } else {
  print("Páratlan");
 }

 if (input > 0) {
  print("Pozitív");
 } else if (input < 0) {
  print("Negatív");
 } else {
  print("Nulla");
 }

 if (sqrt(input.abs()) % 1 == 0) {
  print("Négyzetszám");
 } else {
  print("Nem négyzetszám");
 }


 stdout.write('Összpontszám ');
  input = int.tryParse(stdin.readLineSync()!);
  stdout.write('Elért pontszám: ');
  input2 = int.tryParse(stdin.readLineSync()!);

    double percent = (input2! / input!) * 100;

  if (percent >= 90) {
    print("A");
  } else if (percent >= 80) {
    print("B");
  } else if (percent >= 70) {
    print("C");
  } else if (percent >= 60) {
    print("D");
  } else if (percent >= 50) {
    print("E");
  } else {
    print("F");
  }


}