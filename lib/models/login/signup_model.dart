class SignUpModel {
  String name = '';
  String surName = '';
  String email = '';
  String secondaryEmail = '';
  String mobilePhone = '';
  String password = '';
  String userName = '';
  String gender = '';
  String profileStatus = '';
  late DateTime birthDate;

  Map<String, dynamic> toJson() => {
        'name': name,
        'surName': surName,
        'email': email,
        'secondaryEmail': secondaryEmail,
        'mobilePhone': mobilePhone,
        'password': password,
        'userName': userName,
        'gender': gender,
        'profileStatus': profileStatus,
        'birthDate': birthDate,
      };

  void fromJson(a) => {
        name = a['name'],
        surName = a['surName'],
        email = a['email'],
        secondaryEmail = a['secondaryEmail'],
        mobilePhone = a['mobilePhone'],
        password = a['password'],
        userName = a['userName'],
        gender = a['gender'],
        profileStatus = a['profileStatus'],
        birthDate = a['birthDate'],
      };
}
