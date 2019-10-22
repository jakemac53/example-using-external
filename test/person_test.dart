import 'package:example/person.dart';
import 'package:test/test.dart';

void main() {
  test('can deserialize a person', () {
    var dob = DateTime.now();
    expect(
        Person.fromJson({
          'firstName': 'john',
          'lastName': 'doe',
          'dateOfBirth': dob.toIso8601String()
        }),
        isA<Person>()
            .having((p) => p.firstName, 'first', 'john')
            .having((p) => p.lastName, 'last', 'doe')
            .having((p) => p.dateOfBirth, 'DOB', dob));
  });

  test('can serialize a person', () {
    var dob = DateTime.now();
    var person = Person(firstName: 'john', lastName: 'doe', dateOfBirth: dob);
    expect(
        person.toJson(),
        equals({
          'firstName': 'john',
          'lastName': 'doe',
          'dateOfBirth': dob.toIso8601String()
        }));
  });
}
