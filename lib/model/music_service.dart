class MusicService {
  final String title;
  final String subtitle;
  MusicService({required this.title, required this.subtitle});

  factory MusicService.fromJson(Map<String, dynamic> json) {
    return MusicService(
      title: json['title'],
      subtitle: json['subtitle'],
    );
  }
}
