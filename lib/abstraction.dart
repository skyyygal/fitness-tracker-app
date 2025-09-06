abstract class Animal {
  void sleep() {
    print("sleeping");
  }

  void poop() {
    print("pooping");
  }

  void reproduce() {
    print("reproducing");
  }

  void makeSound() {}
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow meow");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Bow bow");
  }
}

void actAnimal(Animal animal) {
  animal.sleep();
  animal.makeSound();
  animal.poop();

  animal.reproduce();
}

void main() {
  // Animal anima = Animal();
  actAnimal(Dog());
}
