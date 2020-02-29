void main() {
  var name1 = "Harry";
  var kind1 = "Dog";
  var succeeded = registerAnimal(name1, kind1);
  print(succeeded);
  var name2 = "Fred";
  var kind2 = "Cat";
  succeeded = registerAnimal(name2, kind2);
  print(succeeded);

}

bool registerAnimal(String name, String kind){
  print(name);
  print(kind);
  return false;
}
