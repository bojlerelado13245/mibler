void main() {
  print(sum([]));
  print(sum([5]));
  print(sum([-5]));
  print(sum([1, 2, 3.4, 4.3]));
  print(sum([1, -3, 2, 3, 4, -1]));

 print(oddOnesOut([1, 2, 3, 1, 3, 3]));
  print(oddOnesOut([75, 68, 75, 47, 68]));
  print(oddOnesOut([42, 72, 32, 4, 94, 82, 67, 67]));
  print(oddOnesOut([100, 100, 5, 5, 100, 50, 68, 50, 68, 50, 68, 5, 100]));
  print(oddOnesOut([82, 86, 71, 58, 44, 79, 50, 44, 79, 67, 82, 82, 55, 50]));

   print(flattenAndSort([]));
  print(flattenAndSort([[]]));
  print(flattenAndSort([[], []]));
  print(flattenAndSort([[], [1]]));
  print(flattenAndSort([[], [], [], [2], [], [1]]));
  print(flattenAndSort([[1, 3, 5], [100], [2, 4, 6]]));
  print(flattenAndSort([[111, 999], [222], [333], [444], [888], [777], [666], [555]]));
  print(flattenAndSort([[9, 7, 5, 3, 1], [8, 6, 4, 2, 0], [], [1]]));
  print(flattenAndSort([[1], [], [1], [], [], [-1, -2, -1], [0, 3], [1], [2]]));
  print(flattenAndSort([[], [], [64], [], [504, 503], [4096], [], [303], [202], [2500], [], [100]]));
  print(flattenAndSort([[90, 81, 72], [63, 54, 35], [], [46], [27, 18, 0]]));
  print(flattenAndSort([[1], [], [1], [1], [0], [-1], [], [0], [-1], [0], [-1]]));
  print(flattenAndSort([[-9, -8, -7, -6, -5, -4, -3, -2, -1]]));
  print(flattenAndSort([[9, 8, 7, 6, 5, 4, 3, 2, 1]]));

  print(duplicateCount(""));
  print(duplicateCount("abcde"));
  print(duplicateCount("aabbcde"));
  print(duplicateCount("aabBcde"));
  print(duplicateCount("Indivisibility"));
}

num sum(List<num> tomb) {
  num ossz = 0;
  for (var i in tomb) {
    ossz += i;
  }
  return ossz;
}

List<int> oddOnesOut(List<int> szamok) {
  Map<int, int> ism = {};
  for (var i in szamok) {
    ism[i] = (ism[i] ?? 0) + 1;
  }
  List<int> eredmeny = [];
  for (var i in szamok) {
    if (ism[i]! % 2 == 0) {
      eredmeny.add(i);
    }
  }
  return eredmeny;
}

List<int> flattenAndSort(List<List<int>> szamok) {
    List<int> lapos = [];
    for (var i in szamok) {
    lapos.addAll(i);
  }
  lapos.sort();
  return lapos;
}

int duplicateCount(String szoveg){
 String low = szoveg.toLowerCase();
  Map<String,int> ism = {};
 for (var i in low.split('')) {
    ism[i] = (ism[i] ?? 0) + 1;
  }
  
 int ossz = 0;
  for (var v in ism.values) {
    if (v > 1) {
      ossz++;
    }
  }
  return ossz;
}
