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
  try {
    registerAnimal(name1, kind1);
  } catch (e) {
    print(e);
  }
  try {
    registerAnimal(name2, kind2);
  } catch (e) {
    print(e);
  }
  try {
    registerAnimal(name3, kind3);
  } catch (e) {
    print(e);
  }

  animals.forEach((animal) {
    animal.makeSound();
  });

  //Conclusion
  print(animals);
}

void registerAnimal(String name, String kind) {
  Animal animal = new Animal(name, kind);
  print(animal.name);
  animals.add(animal);
  print('Animal registered');
}


class Animal {
  final String name;
  String kind;
  String _sound;

  Animal(this.name, String kind) {
    if (name.isEmpty) {
      throw new ArgumentError("The name was empty, please provide a name");
    }

    if (kind.isEmpty) {
      throw new ArgumentError("The kind was empty, please provide a kind");
    }
    this.kind = kind;
    this._determineSound(this.kind);
  }

  void _determineSound(String kind) {
    if (kind == "Dog") {
      _sound = 'Woef';
    }else if (kind == "Cat") {
      _sound = "Mew Mew";
    } else {
      _sound = "Unknown";
    }
  }
  
  void makeSound(){
    print(_sound);
  }
}
