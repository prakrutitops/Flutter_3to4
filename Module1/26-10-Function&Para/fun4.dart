int findVolume(int length,{int breadth, int height})
{

  print("Length is $length");
  print("Breadth is $breadth");
  print("Height is $height");

  print("Volume is ${length * breadth * height}");
}
void main()
{

  findVolume(5, height: 6, breadth: 7);


}