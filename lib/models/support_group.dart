class SupportGroup {
  final String name;
  final String id;
  final String facilityName;
  final bool joined;
  final String dateCreated;
  final int members;
  final String description;

  SupportGroup(
      {required this.name,
      required this.facilityName,
      required this.joined,
      required this.id,
      required this.dateCreated,
      required this.members,
      required this.description});

  factory SupportGroup.fromJson(Map<String, dynamic> json) {
    return SupportGroup(
        name: json['name'],
        facilityName: json['facilityName'],
        joined: json['joined'],
        id: json['id'],
        dateCreated: json['dateCreated'],
        members: json['members'],
        description: json['description']);
  }
}
