class User {
  String? name;
  String? email;
  String? password;
  bool? logon;

  User({this.name, this.email, this.password, this.logon});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    logon = json['logon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['logon'] = this.logon;
    return data;
  }

  String toString() {
    return 'Name: ' +
        this.name! +
        'Email: ' +
        this.email! +
        'Password: ' +
        this.password!;
  }
}
