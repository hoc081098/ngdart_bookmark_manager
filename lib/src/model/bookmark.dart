import 'package:meta/meta.dart';

class Bookmark {
  final String id;
  final String title;
  final String description;
  final String url;
  final bool edit;

  Bookmark({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.url,
    this.edit = false,
  });

  factory Bookmark.fromJson(Map<String, dynamic> json) {
    return Bookmark(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'url': url,
    };
  }

  Bookmark copyWith({
    String title,
    String description,
    String url,
    bool edit,
  }) {
    return Bookmark(
      title: title ?? this.title,
      description: description ?? this.description,
      url: url ?? this.url,
      edit: edit ?? this.edit,
      id: id,
    );
  }
}
