class User{
  final String id;
  final String fullName;
  final String email;
  final String phoneNumber;
  final String password;
  final String role;

  User({required this.id,required this.fullName,required this.email,required this.phoneNumber,required this.password,required this.role});

  factory User.fromJson(Map < String, dynamic > json){  //json argument to access values using corresponding keys ['id']
    return User(
      id: json['id'],
      fullName: json['fullName'],
      email: json['email'],
      phoneNumber: json['phoneNo'],
      password: json['password'],
      role: json['role'],
    );
  }
}