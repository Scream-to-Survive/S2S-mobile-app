
class Contact {
  int idContact;
  String firstname;
  String lastname;
  String email;
  String address;
  String phoneNumber;

  Contact({
    this.idContact,
    this.firstname,
    this.lastname,
    this.email,
    this.address,
    this.phoneNumber,
  });

  factory Contact.fromMap(Map<String, dynamic> json) => Contact(
    idContact: json["idContact"],
    firstname: json["firstname"],
    lastname: json["lastname"],
    email: json["email"],
    address: json["address"],
    phoneNumber: json["phoneNumber"],
  );

  Map<String, dynamic> toMap() => {
    "idContact": idContact,
    "firstname": firstname,
    "lastname": lastname,
    "email": email,
    "address": address,
    "phoneNumber": phoneNumber,
  };
}

