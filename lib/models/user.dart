class User {
  final String id;
  final String fullname;
  final String email;

  User({
    required this.id,
    required this.fullname,
    required this.email,
  });

  User copyWith({
    String? id,
    String? fullname,
    String? email,
  }) {
    return User(
      id: id ?? this.id,
      fullname: fullname ?? this.fullname,
      email: email ?? this.email,
    );
  }
}
