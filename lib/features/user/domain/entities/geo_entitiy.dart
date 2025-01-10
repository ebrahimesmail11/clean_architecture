class Geo {
  Geo({required this.lag, required this.lat});
  factory Geo.fromJson(Map<String, dynamic> json) {
    return Geo(
      lag: json['lag'],
      lat: json['lat'],
    );
  }
  final String lat;
  final String lag;
}
