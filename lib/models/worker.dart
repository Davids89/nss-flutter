import 'person.dart';

class Worker extends Person {
  String email;
  String job;

  Worker({String name, String surname, String email, String job}) {
    this.name = name;
  }
}
