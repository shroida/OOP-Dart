class User {
  // access only in the same file
  String? _id;
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
    print('ID: $_id');
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
  user1._id = "54545";
  user1.language = "German";
  user1.name = "Shroida";
  user1.printUserData();
}
