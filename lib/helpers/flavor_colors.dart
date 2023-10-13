import 'package:create_app_flavor/flavors.dart';
import 'package:create_app_flavor/helpers/colors.dart';
import 'package:flutter/material.dart';

abstract class FlavorColor {
  static Color get backgroundColor {
    switch (FlavorValues.flavor) {
      case Flavor.flavorOne:
        return MyColors.gray;
      case Flavor.flavorTwo:
        return MyColors.white;
    }
  }

  static Color get appBarColor {
    switch (FlavorValues.flavor) {
      case Flavor.flavorOne:
        return MyColors.primaryAppOne;
      case Flavor.flavorTwo:
        return MyColors.primaryAppTwo;
    }
  }

  static Color get disableButton {
    switch (FlavorValues.flavor) {
      case Flavor.flavorOne:
        return MyColors.primaryAppOne.withOpacity(0.4);
      case Flavor.flavorTwo:
        return MyColors.primaryAppTwo.withOpacity(0.4);
    }
  }

  static Color get primaryButton {
    switch (FlavorValues.flavor) {
      case Flavor.flavorOne:
        return MyColors.primaryAppOne;
      case Flavor.flavorTwo:
        return MyColors.primaryAppTwo;
    }
  }
}
