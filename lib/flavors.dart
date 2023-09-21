enum Flavor {
  flavorOne,
  flavorTwo,
}

class FlavorValues {
  static final FlavorValues _instance = FlavorValues._internal();

  factory FlavorValues() => _instance;

  FlavorValues._internal();

  static Flavor? _flavor;

  static void initialize(Flavor flavor) => _flavor = flavor;

  static bool isFlavorOne() => _flavor == Flavor.flavorOne;

  static bool isFlavorTwo() => _flavor == Flavor.flavorTwo;

  static String get nameApp {
    switch (_flavor) {
      case Flavor.flavorOne:
        return "Flavor one";
      case Flavor.flavorTwo:
        return "Flavor two";
      default:
        return "Unknown Flavor";
    }
  }
}
