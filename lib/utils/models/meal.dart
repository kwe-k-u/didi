

class Meal{
  late String name;
  late String provider;
  late double rating;
  late double price;


  Meal({
   required this.name,
   required this.provider,
   required this.rating,
   required this.price
});


  factory Meal.fromJson(Map<String, dynamic> map){
    return Meal(
      name: map["name"],
      provider: map["provider"],
      rating: map["rating"],
      price: map["price"]
    );
  }

}