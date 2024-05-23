class Hotel {
    String id;
    String name;
    String email;
    List<String> images;
    int price;
    String location;
    double rate;
    String description;
    List<Map<String, dynamic>> activities;
    String category;

    Hotel({
        required this.id,
        required this.name,
        required this.email,
        required this.images,
        required this.price,
        required this.location,
        required this.rate,
        required this.description,
        required this.activities,
        required this.category,
    });

    factory Hotel.fromJson(Map<String, dynamic> json) => Hotel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        images: List<String>.from(json["images"].map((x) => x)),
        price: json["price"],
        location: json["location"],
        rate: json["rate"]?.toDouble(),
        description: json["description"],
        activities: List<Map<String, dynamic>>.from(json["activities"]),
        category: json["category"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "images": List<dynamic>.from(images.map((x) => x)),
        "price": price,
        "location": location,
        "rate": rate,
        "description": description,
        "activities": activities,
        "category": category,
    };
}