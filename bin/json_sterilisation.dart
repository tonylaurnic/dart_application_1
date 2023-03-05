class Person {
  Person({
    required this.name,
    required this.age,
  });
  final String name;
  final int age;

  // for create a json sterilization need to:
  //

  factory Person.fromJson(Map<String, Object> json) {
    final name = json['name'];
    final age = json['age'];

    if (name is String && age is int) {
      return Person(
        age: age,
        name: name,
      );
    }
    throw UnimplementedError('Could not read name or age');
  }

  Map<String, Object> toJson() => {
        'name': 'Antonio',
        'age': 43,
      };
}

void main() {
  final person = Person.fromJson({
    'name': 'Antonio',
    'age': 43,
  });

  final json = person.toJson();
  print(json);
}
