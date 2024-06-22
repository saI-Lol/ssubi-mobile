class Hotline {
  final String facility;
  final String phoneNumber;

  Hotline({required this.facility, required this.phoneNumber});

  factory Hotline.fromJson(Map<String, dynamic> json) {
    return Hotline(
        facility: json['facility'], phoneNumber: json['phoneNumber']);
  }
}
