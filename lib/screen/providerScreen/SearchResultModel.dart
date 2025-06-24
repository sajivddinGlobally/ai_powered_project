// models/search_result_model.dart

class SearchResult {
  final int userId;
  final String name;
  final int? age;
  final String location;
  final String education;
  final String occupation;
  final String? photoThumbnail;

  SearchResult({
    required this.userId,
    required this.name,
    this.age,
    required this.location,
    required this.education,
    required this.occupation,
    this.photoThumbnail,
  });

  factory SearchResult.fromJson(Map<String, dynamic> json) {
    return SearchResult(
      userId: json['user_id'],
      name: json['name'],
      age: json['age'],
      location: json['location'] ?? '',
      education: json['education'] ?? '',
      occupation: json['occupation'] ?? '',
      photoThumbnail: json['photo_thumbnail'],
    );
  }
}
