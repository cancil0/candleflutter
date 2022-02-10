class LoginModel {
  String email = '';
  String mobilePhone = '';
  String userName = '';
  String password = '';
  String privateTokenKey = '';

  LoginModel(this.email, this.password, this.userName, this.mobilePhone,
      this.privateTokenKey);

  Map<String, dynamic> toJson() => {
        'email': email,
        'mobilePhone': mobilePhone,
        'userName': userName,
        'password': password,
        'privateTokenKey': privateTokenKey,
      };

  void fromJson(a) => {
        email = a['email'],
        mobilePhone = a['mobilePhone'],
        userName = a['userName'],
        password = a['password'],
        privateTokenKey = a['privateTokenKey']
      };
}
