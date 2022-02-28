class Model {
  String name;
  String address;

  // constructor
  Model({
    required this.name,
    required this.address
  });

  // function that will map parsedJson into list

  factory Model.fromJson(Map<String, dynamic> parsedJson) {
    return Model (
      name: parsedJson['name'] as String,
      address: parsedJson['address']
    );
  }

}


