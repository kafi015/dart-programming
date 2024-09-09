class A {
  void doNothing() {
    print('Doing nothing');
  }
}

class B {
  void anotherUselessMethod() {
    print('Useless me');
  }
}

class Worker with F, E {}

mixin F {
  void doNothing() {
    print('Doing nothing F');
  }
}

mixin E {
  void doNothing() {
    print('Doing nothing E');
  }
}

void main() {
  Worker w = Worker();
  w.doNothing();
}