class MyLocation {
  int id;
  int latitude;
  int longitude;

  MyLocation({
    this.id,
    this.latitude,
    this.longitude,
  });

  factory MyLocation.fromMap(Map<String, dynamic> json) => MyLocation(
        id: json["id"],
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "latitude": latitude,
        "longitude": longitude,
      };
}
