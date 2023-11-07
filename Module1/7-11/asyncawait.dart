Future delay(int sec, String msg)
{
  final duration=Duration(seconds: sec);

  return Future.delayed(duration).then((value) => msg);

}

void main() async
{
  print("Life");
  await delay(2,"Is").then((value) => print(value)) ;
  print("Good");
}