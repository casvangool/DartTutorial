// Init
List<Animal> animals = new List<Animal>();

void main() {
  // Init variables
  var name1 = "Harry";
  var kind1 = AnimalKind.Dog;
  var name2 = "Fred";
  var kind2 = AnimalKind.Cat;
  var name3 = 'Larry';
  var kind3 = AnimalKind.Bird;

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

void registerAnimal(String name, AnimalKind kind) {
  Animal animal = new Animal(name, kind);
  print(animal.name);
  animals.add(animal);
  print('Animal registered');
}


class Animal {
  final String name;
  AnimalKind kind;
  String _sound;

  Animal(this.name, AnimalKind kind) {
    if (name.isEmpty) {
      throw new ArgumentError("The name was empty, please provide a name");
    }

    if (kind == null) {
      throw new ArgumentError("The kind was empty, please provide a kind");
    }
    this.kind = kind;
    this._determineSound(this.kind);
  }

  void _determineSound(AnimalKind kind) {
    if (kind == AnimalKind.Dog) {
      _sound = 'Woef';
    }else if (kind == AnimalKind.Cat) {
      _sound = "Mew Mew";
    } else {
      _sound = "Unknown";
    }
  }
  
  void makeSound(){
    print(_sound);
  }
  
    @override
  String toString() {
    return "$name the $kind";
  }
}

enum AnimalKind {
  Dog,
  Cat,
  Bird
}
