

void main(){

  int MAths = 56, Sc = 67,En = 89,Guj = 45,total;

  total = MAths + Sc + En+ Guj;

  double ave = total/4;

  if(ave >= 70)
  {
    print("Grade is A");
  }
  else  if(ave >= 60)
  {
    print("Grade is B");
  }
  else  if(ave >= 50){
    print("Grade is C");
  }
  else  if(ave >= 40)
  {
    print("Grade is D");
  }
  else
  {
    print("Fail");
  }

}