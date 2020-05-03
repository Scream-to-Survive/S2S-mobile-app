class MyNotification {
  int id;
  String title;
  String type;
  String content;
  String creationDate;
  int duration;

  MyNotification({
    this.id,
    this.title,
    this.type,
    this.content,
    this.creationDate,
    this.duration,
  });

  factory MyNotification.fromMap(Map<String, dynamic> json) => MyNotification(
        id: json["id"],
        title: json["title"],
        type: json["type"],
        content: json["content"],
        creationDate: json["creationDate"],
        duration: json["duration"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "type": type,
        "content": content,
        "creationDate": creationDate,
        "duration": duration,
      };
}
