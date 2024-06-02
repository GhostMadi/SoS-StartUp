class ProfileEntity {
  final String id;
  final String name;
  final String gmail;
  final String password;
  final String number;
  final String gender;
  final String place;
  final String about;
  final String createdData;
  final String picture;
  final List skills;
  final List experience;
  final bool active;

  ProfileEntity(
      {required this.id,
      required this.active,
      required this.name,
      required this.gmail,
      required this.password,
      required this.number,
      required this.gender,
      required this.place,
      required this.about,
      required this.createdData,
      required this.picture,
      required this.skills,
      required this.experience});
}
