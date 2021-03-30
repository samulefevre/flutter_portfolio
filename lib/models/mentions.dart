class Mentions {
  Mentions({
    this.title,
    this.text,
  });

  final String? title;
  final List<dynamic>? text;

  factory Mentions.fromJson(Map<dynamic, dynamic> json) {
    return new Mentions(
      title: json['title'] as String? ?? '',
      text: json['text'] as List<dynamic>? ?? [],
    );
  }
}
