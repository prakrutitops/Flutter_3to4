import 'dart:io';

void main()
{

  try
  {
    print("Enter Your a");
    int a = int.parse(stdin.readLineSync());

    print("Enter Your b");
    int b = int.parse(stdin.readLineSync());


    int c = a+b;

    print(c);
  }
  catch(e)
  {
      print("Please Enter Numeric value only");
  }
  finally
  {
    print("executed");
  }

}