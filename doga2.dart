import 'dart:io';

void main(){
  List<Map<String, Object>> adatok = [];
  File file = File("utca.txt");
  List<String> read = file.readAsLinesSync().skip(1).toList();

  for (var i in read){
    List<String> asd = i.trim().split(' ');
    adatok.add(
      {
      'adoszam': asd[0],
      'utcanev': asd[1],
      'hazszam': asd[2],
      'adosav': asd[3],
      'terulet': asd[4],
      }
    );
  }


  String ado(String adosav, String terulet){

    int osszeg = 0;
    if (adosav == "A"){
      osszeg = int.parse(terulet)*800;
    }else if(adosav == "B"){
osszeg = int.parse(terulet)*600;
    }else if(adosav == "C"){
osszeg = int.parse(terulet)*100;
    }

    if(osszeg < 10000){
      return "0";
    }
    return osszeg.toString();
  }


  int ossz = 0;
  for(var i in adatok){
    ossz++;
  }
  print("2. feladat. A mintában ${ossz} telek szerepel.");

  String input = stdin.readLineSync()!;

  bool van = false;
  for(var i in adatok){
    if(i['adoszam'] == input){
      van = true;
    }
  }
  if(van == true)
  {
    print("3. feladat. Egy tulajdonos adószáma: ${input}");
 for(var i in adatok){
    if(i['adoszam'] == input){
     print("${i['utcanev']} utca ${i['hazszam']}");
    }
  }
  }
  else
  {
    print("Nem szerepel az adatállományban.");
  }
 
  print("5. Feladat");

  int Adb = 0; int Aossz = 0;
  int Bdb = 0; int Bossz = 0;
  int Cdb = 0; int Cossz = 0;

 for(var i in adatok){
   if (i['adosav'] == "A"){
    Adb++;
    Aossz += int.parse(ado(i['adosav'].toString(), i['terulet'].toString()));
    }else if(i['adosav'] == "B"){
 Bdb++;
    Bossz += int.parse(ado(i['adosav'].toString(), i['terulet'].toString()));
    }else if(i['adosav'] == "C"){
 Cdb++;
    Cossz += int.parse(ado(i['adosav'].toString(), i['terulet'].toString()));
    }
 }
 print("A sávba ${Adb} telek esik, az adó ${Aossz} Ft.");
  print("B sávba ${Bdb} telek esik, az adó ${Bossz} Ft.");
   print("C sávba ${Cdb} telek esik, az adó ${Cossz} Ft.");

print("6. feladat");

List<String> problemak = [];

for (var i in adatok) {
  String utca = i['utcanev'].toString();

  if (!problemak.contains(utca)) {
    String elsoSav = "";
    bool elteres = false;

    for (var j in adatok) {
      if (j['utcanev'] == utca) {
        if (elsoSav == "") {
          elsoSav = j['adosav'].toString();
        } else if (j['adosav'] != elsoSav) {
          elteres = true;
        }
      }
    }

    if (elteres == true) {
      problemak.add(utca);
      print(utca);
    }
  }
}

print("7. feladat");

File f = File("fizetendo.txt");
List<String> ki = [];

List<String> adoszamok = [];

for (var i in adatok) {
  String a = i['adoszam'].toString();
  if (!adoszamok.contains(a)) {
    adoszamok.add(a);
  }
}

for (var a in adoszamok) {
  int osszeg = 0;

  for (var i in adatok) {
    if (i['adoszam'] == a) {
      osszeg += int.parse(
        ado(i['adosav'].toString(), i['terulet'].toString())
      );
    }
  }

  ki.add("$a $osszeg");
}

f.writeAsStringSync(ki.join("\n"));



}