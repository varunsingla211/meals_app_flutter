enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isLactoseFree;
  final bool isGlutenFree;
  final bool isVegetarian;
  final bool isVegan;

  const Meal(
      {this.affordability,
      this.categories,
      this.complexity,
      this.duration,
      this.id,
      this.imageUrl,
      this.ingredients,
      this.steps,
      this.title,
      this.isGlutenFree,
      this.isLactoseFree,
      this.isVegetarian,
      this.isVegan});
}
