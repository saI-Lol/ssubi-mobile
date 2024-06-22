class Event {
  final String date;
  final String startTime;
  final String endTime;
  final String location;
  final String title;
  final String description;
  final String imageUrl;
  final String postDate;

  Event({
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.location,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.postDate,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      date: json['date'],
      startTime: json['startTime'],
      endTime: json['endTime'],
      location: json['location'],
      title: json['title'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      postDate: json['postDate'],
    );
  }
}
