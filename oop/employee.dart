// contract
abstract class Employee {
  void work();

  void formalDressUp();

  void attendMeeting();
}

//The implement keyword is used to implement an interface 
// by forcing the redefinition of the functions.

class SoftwareEngineer implements Employee {
  @override
  void attendMeeting() {
    print('Attending Stand up meeting');
  }

  @override
  void formalDressUp() {
    print('wearing Shirt and pant');
  }

  @override
  void work() {
    print('coding');
  }
}

class Marketing implements Employee {
  @override
  void attendMeeting() {
    print('Attending marketing meeting');
  }

  @override
  void formalDressUp() {
    print('Wearing full formal dress');
  }

  @override
  void work() {
    print('Dealing with people');
  }

}

void main() {
  Employee niloy = SoftwareEngineer();
  niloy.work();
  niloy.attendMeeting();
  niloy.formalDressUp();

  Employee ovi = Marketing();
  ovi.work();
  ovi.formalDressUp();
  ovi.attendMeeting();
}