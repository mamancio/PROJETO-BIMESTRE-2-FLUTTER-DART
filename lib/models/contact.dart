class Contact {
  final int id;
  final String name;
  final String email;
  final String password;

  Contact(this.id, this.name, this.email, this.password);

  @override
  String toString() {
    return 'Contact{id: $id, name: $name, email: $email, password: $password}';
  }
}
