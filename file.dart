List<String> animals = new List<String>();

void main() {
  var name1 = "Harry";
  var kind1 = "Dog";
  var succeeded = registerAnimal(name1, kind1);
  print(succeeded);
  var name2 = "Fred";
  var kind2 = "Cat";
  succeeded = registerAnimal("", kind2);
  print(succeeded);
  print(animals);

}

bool registerAnimal(String name, String kind){
  if(name.isEmpty || kind.isEmpty){
    return false;
  }
  animals.add("$name the $kind");
  return true;
}
