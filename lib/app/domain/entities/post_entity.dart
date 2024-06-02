import 'package:equatable/equatable.dart';

class PostEntity extends Equatable {
  final String? id;
  final String? sphere;
  final String? capital;
  final String? place;
  final String? forWhome;
  final String? name;
  final String? comment;
  final String? createdAt;
  final String? peopleNumbeFrom;
  final String? peopleNumbeTo;
  final bool? activ;
  final List? needPeople;
  final List? needSkills;

  const PostEntity(
      {required this.id,
      required this.sphere,
      required this.capital,
      required this.place,
      required this.forWhome,
      required this.name,
      required this.comment,
      required this.createdAt,
      required this.peopleNumbeFrom,
      required this.peopleNumbeTo,
      required this.activ,
      required this.needPeople,
      required this.needSkills});

  @override
  List<Object?> get props => [
        id,
        sphere,
        capital,
        place,
        forWhome,
        name,
        comment,
        createdAt,
        peopleNumbeFrom,
        peopleNumbeTo,
        activ,
        needPeople,
        needSkills
      ];
}
