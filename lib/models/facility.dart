class Facility {
  final String name;
  final String location;
  final String speciality;
  final String image;
  final String phone;
  final String openTime;

  Facility(
      {required this.name,
      required this.location,
      required this.speciality,
      required this.image,
      required this.phone,
      required this.openTime});

  factory Facility.fromJson(Map<String, dynamic> json) {
    return Facility(
        name: json['name'],
        location: json['location'],
        speciality: json['speciality'],
        image: json['image'],
        phone: json['phone'],
        openTime: json['openTime']);
  }
}
