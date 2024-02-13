import '../../../domain/entities/user_entities.dart';

class MockUsers {
  static Map<String, User> users = {
    'demouser1': User(id: 'demouser1', firstName: 'Anton', lastName: 'Kozlov'),
    'demouser2': User(id: 'demouser2', firstName: 'Ilya', lastName: 'Faxen'),
    'demouser3': User(id: 'demouser3', firstName: 'Vasia', lastName: 'Keriak'),
  };
}
