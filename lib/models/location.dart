class MyLocation {
  int latitude;
  int longitude;

  MyLocation({
    this.latitude,
    this.longitude,
  });

  factory MyLocation.fromMap(Map<String, dynamic> json) => MyLocation(
    latitude: json["latitude"],
    longitude: json["longitude"],
  );

  Map<String, dynamic> toMap() => {
    "latitude": latitude,
    "longitude": longitude,
  };
}
