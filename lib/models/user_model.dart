class UserModel {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? 0,
      name: map['name'] ?? "",
      username: map['username'] ?? "",
      email: map['email'] ?? "",
      phone: map['phone'] ?? "",
    );
  }

  Map<String, dynamic> toMap() {
    var data = {
      "id": id,
      "name": name,
      "username": username,
      "email": email,
      "phone": phone
    };

    return data;
  }
}
