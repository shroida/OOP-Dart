class User {
  String? name;
  int? age;
  Gender? gender;
  String? language;
  User({
    this.name,
    this.age,
    this.gender,
    this.language,
  });
  void printUserData() {
    print('Name: $name');
    print('Age: $age');
    print('Gender: $gender');
    print('Language: $language');
  }
}

enum Gender { male, female }

void main() {
  User user1 = User();
  user1.gender = Gender.male;
  user1.age = 22;
  user1.language = "German";
  user1.name = "Shroida";
  user1.printUserData();
  print('=====================');
  User user2 =
      User(age: 20, language: "French", name: "Mai", gender: Gender.female);

  user2.printUserData();
}
