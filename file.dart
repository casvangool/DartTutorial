// Init
List<String> animals = new List<String>();

void main() {
  // Init variables
  var name1 = "Harry";
  var kind1 = "Dog";
  var name2 = "Fred";
  var kind2 = "Cat";
  
  // Code functional
  try{
    registerAnimal(name1, kind1);
  } catch(e){
    print(e);
  }
  try{
    registerAnimal(name2, "");
  } catch(e){
    print(e);
  }

  //Conclusion
  print(animals);
}

void registerAnimal(String name, String kind){
  if(name.isEmpty){
    throw new ArgumentError("The name was empty, please provide a name");
  }
  
  if(kind.isEmpty){
    throw new ArgumentError("The kind was empty, please provide a kind");
  }
  animals.add("$name the $kind");
  print('Animal registered');
}
