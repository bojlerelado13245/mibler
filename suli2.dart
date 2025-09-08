void main() {
  
  int intValue = 10;
  double doubleValue = 5.5;
  String strValue = "cs";
  bool boolValue = true;

  
  int intResult = intValue + 5; 
  intResult -= 3; 
  intResult *= 2; 
  intResult ~/= 4; 

  double doubleResult = doubleValue + 2.5; 
  doubleResult -= 1.0; 
  doubleResult *= 3; 
  doubleResult /= 2; 

  

  print('intValue: $intValue');

  print('doubleValue: $doubleValue');

  print('strValue: $strValue');

  print('boolValue: $boolValue');


  print('intResult: $intResult');
  print('doubleResult: $doubleResult');


  bool boolResult = !boolValue;
  print('boolResult: $boolResult');
}