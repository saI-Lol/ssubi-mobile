class Video {
  final String title;
  final String author;
  final String url;
  final String date;

  Video({
    required this.title,
    required this.author,
    required this.url,
    required this.date,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      title: json['title'],
      author: json['author'],
      url: json['url'],
      date: json['date'],
    );
  }
}
