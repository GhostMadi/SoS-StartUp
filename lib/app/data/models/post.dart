import 'package:flutter_application_3/app/domain/entities/post_entity.dart';

class Post extends PostEntity {
  const Post(
      {required super.id,
      required super.sphere,
      required super.capital,
      required super.place,
      required super.forWhome,
      required super.name,
      required super.comment,
      required super.createdAt,
      required super.peopleNumbeFrom,
      required super.peopleNumbeTo,
      required super.activ,
      required super.needPeople,
      required super.needSkills});

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
        id: map['id'] ?? '',
        sphere: map['sphere'] ?? '',
        capital: map['capital'] ?? '',
        place: map['place'] ?? '',
        forWhome: map['forWhome'] ?? '',
        name: map['name'] ?? '',
        comment: map['comment'] ?? '',
        createdAt: map['createdAt'] ?? '',
        peopleNumbeFrom: map['peopleNumbeFrom'] ?? '',
        peopleNumbeTo: map['peopleNumbeTo'] ?? '',
        activ: map['activ'] ?? '',
        needPeople: map['needPeople'] ?? '',
        needSkills: map['needSkills'] ?? '');
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'sphere': sphere,
      'capital': capital,
      'place': place,
      'forWhome': forWhome,
      'name': name,
      'comment': comment,
      'createdAt': createdAt,
      'peopleNumbeFrom': peopleNumbeFrom,
      'peopleNumbeTo': peopleNumbeTo,
      'activ': activ,
      'needPeople': needPeople,
      'needSkills': needSkills,
    };
  }

  factory Post.empty() {
    return const Post(
      id: '',
      sphere: '',
      capital: '',
      place: '',
      forWhome: '',
      name: '',
      comment: '',
      createdAt: '',
      peopleNumbeFrom: '',
      peopleNumbeTo: '',
      activ: true,
      needPeople: [],
      needSkills: [],
    );
  }
  Post copyWith({
    String? id,
    String? sphere,
    String? capital,
    String? place,
    String? forWhome,
    String? name,
    String? comment,
    String? createdAt,
    String? peopleNumbeFrom,
    String? peopleNumbeTo,
    bool? activ,
    List? needPeople,
    List? needSkills,
  }) {
    return Post(
        id: id ?? this.id,
        sphere: sphere ?? this.sphere,
        capital: capital ?? this.sphere,
        place: place ?? this.sphere,
        forWhome: forWhome ?? this.forWhome,
        name: name ?? this.name,
        comment: comment ?? this.comment,
        createdAt: createdAt ?? this.createdAt,
        peopleNumbeFrom: peopleNumbeFrom ?? this.peopleNumbeFrom,
        peopleNumbeTo: peopleNumbeTo ?? this.peopleNumbeTo,
        activ: activ ?? this.activ,
        needPeople: needPeople ?? this.needPeople,
        needSkills: needSkills ?? this.needSkills);
  }
}
