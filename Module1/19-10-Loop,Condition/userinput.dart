import 'dart:io';

void main()
{
    print("Enter Your Id");
    int id = int.parse(stdin.readLineSync());

    print("Enter Your Name");
    String  name = stdin.readLineSync();

    print("Enter Your Salary");
    double salary = double.parse(stdin.readLineSync());

    print("Your id is $id");
    print("Your Name is $name");
    print("Your Salary is $salary");
}