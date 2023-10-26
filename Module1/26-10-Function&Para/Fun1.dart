//with para with return type
int add(int a,int b)
{
  return a+b;
}

//with para without return type
void add2(int a,int b)
{
    int c = a+b;
    print(c);
}

//with return type without para
int add3()
{
  int a= 6;
  int b= 4;

  int c = a+b;
  print(c);
}

//without return type without para
void add4()
{
  int a= 6;
  int b= 4;

  int c = a+b;
  print(c);
}


void main()
{
  print(add(6, 4));
  add2(6, 4);
  add3();
  add4();


}