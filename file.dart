// Init
List<Animal> animals = new List<Animal>();

void main() {
  // Init variables
  var name1 = "Harry";
  var kind1 = "Dog";
  var name2 = "Fred";
  var kind2 = "Cat";
  var name3 = 'Larry';
  var kind3 = "Bird";
  
  // Code functional
  try{
    registerAnimal(name1, kind1);
  } catch(e){
    print(e);
  }
  try{
    registerAnimal(name2, kind2);
  } catch(e){
    print(e);
  }
    try{
    registerAnimal(name3, kind3);
  } catch(e){
    print(e);
  }
  
  
  animals.forEach((animal) {
    makeSound(animal.kind);
  });
  
  

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
  Animal animal = new Animal();
  animal.name = name;
  animal.kind = kind;
  animals.add(animal);
  print('Animal registered');
}

void makeSound(String kind){
  if(kind == "Dog"){
    print('Woef');
  }
  
  if(kind == "Cat"){
    print('mew mew');
  }
}

class Animal {
  String name;
  String kind;
}
