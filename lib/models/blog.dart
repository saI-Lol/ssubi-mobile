class Blog {
  String title;
  String content;
  String author;
  String date;

  Blog({
    required this.title,
    required this.content,
    required this.author,
    required this.date,
  });

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      title: json['title'],
      content: json['content'],
      author: json['author'],
      date: json['date'],
    );
  }
}
