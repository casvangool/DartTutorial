void main() {
  int a = 5;
  int b = 4;
  if(a == b){
    b = b + 2;
  } else if (a < b){
    b = b - 2;
  } else {
    b = b * 2;
  }
  print(b);
}
