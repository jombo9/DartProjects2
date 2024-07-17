import 'dart:io';

void main() {
  stdout.write("Enter temperature: ");
  double? temp = double.parse(stdin.readLineSync()!);

  stdout.write("Convert to F(Fahrenheit or C(Celcius))?: ");
  var choice = stdin.readLineSync()?.toLowerCase();

  if (temp == null) {
    print("Invalid temperature input! ");
    return;
  }

  double result;
  String unit;

  if (choice == 'f') {
    result = temp * 9 / 5 + 32;
    unit = 'F';
  } else if (choice == 'c') {
    result = (temp - 32) * 5 / 9;
    unit = 'C';
  } else {
    print("Invalid Choice! ");
    return;
  }
  print("$temp ${unit == 'F' ? 'C' : 'F'} is $result $unit");
}
