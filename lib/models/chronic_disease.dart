class ChronicDisease {
  int idChronicDisease;
  String disease;

  ChronicDisease({
    this.idChronicDisease,
    this.disease,
  });

  factory ChronicDisease.fromMap(Map<String, dynamic> json) => ChronicDisease(
    idChronicDisease: json["idChronicDisease"],
    disease: json["disease"],
  );

  Map<String, dynamic> toMap() => {
    "idChronicDisease": idChronicDisease,
    "disease": disease,
  };
}