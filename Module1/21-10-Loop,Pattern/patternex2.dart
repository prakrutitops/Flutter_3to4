import 'dart:io';

void main()
{
  int i,j,space,num;

  print("Enter Any Number");
  num = int.parse(stdin.readLineSync());

  for(i=1;i<=num;i++)//row
  {
      for(space=0;space!=(num-i);space++)
      {
        stdout.write(" ");
      }
      for(j=1;j<=i;j++)//col
      {
        stdout.write("*");
      }
    print("");

  }

}