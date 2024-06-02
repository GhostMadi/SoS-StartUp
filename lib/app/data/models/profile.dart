import 'package:flutter_application_3/app/domain/entities/profile.dart';

class Profile extends ProfileEntity {
  Profile(
      {required super.id,
      required super.name,
      required super.gmail,
      required super.password,
      required super.number,
      required super.gender,
      required super.place,
      required super.about,
      required super.createdData,
      required super.picture,
      required super.skills,
      required super.experience,
      required super.active});

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      id: map['id'] ?? '',
      active: map['active'] ?? '',
      name: map['name'] ?? '',
      gmail: map['gmail'] ?? '',
      password: map['password'] ?? '',
      number: map['number'] ?? '',
      gender: map['gender'] ?? '',
      place: map['place'] ?? '',
      about: map['about'] ?? '',
      createdData: map['createdData'] ?? '',
      picture: map['picture'] ?? '',
      skills: map['skills'] ?? '',
      experience: map['experience'] ?? '',
    );
  }
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "active": active,
      "name": name,
      "gmail": gmail,
      "password": password,
      "number": number,
      "gender": gender,
      "place": place,
      "about": about,
      "createdData": createdData,
      "picture": picture,
      "skills": skills,
      "experience": experience,
    };
  }

  factory Profile.empty() {
    return Profile(
        id: '',
        name: '',
        gmail: '',
        password: '',
        number: '',
        gender: '',
        place: '',
        about: '',
        createdData: '',
        picture: '',
        skills: [],
        experience: [],
        active: true);
  }

  Profile copyWith(
      String? id,
      String? name,
      String? gmail,
      String? password,
      String? number,
      String? gender,
      String? place,
      String? about,
      String? createdData,
      String? picture,
      List? skills,
      List? experience,
      bool? active) {
    return Profile(
        id: id ?? this.id,
        name: name ?? this.name,
        gmail: gmail ?? this.gmail,
        password: password ?? this.password,
        number: number ?? this.number,
        gender: gender ?? this.gender,
        place: place ?? this.place,
        about: about ?? this.about,
        createdData: createdData ?? this.createdData,
        picture: picture ?? this.picture,
        skills: skills ?? this.skills,
        experience: experience ?? this.experience,
        active: active ?? this.active);
  }
}
