import 'package:hive/hive.dart';
part 'signupdata.g.dart';

@HiveType(typeId: 0)
class SignupData {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String email;

  @HiveField(2)
  final String contact;

  @HiveField(3)
  final String address;

  @HiveField(4)
  final String workExperience;

  @HiveField(5)
  final String education;

  @HiveField(6)
  final String password;

  SignupData({
    required this.name,
    required this.email,
    required this.contact,
    required this.address,
    required this.workExperience,
    required this.education,
    required this.password,
  });
}

