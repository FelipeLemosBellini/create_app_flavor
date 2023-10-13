import 'package:create_app_flavor/helpers/flavor_colors.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function() onTapButton;
  final bool disableButton;
  final double width;
  final EdgeInsets margin;
  final String textButton;

  const PrimaryButton(
      {required this.onTapButton,
      required this.textButton,
      this.margin = EdgeInsets.zero,
      this.width = double.infinity,
      this.disableButton = false,
      Key? key})
      : super(key: key);

  Color get colorButton => disableButton ? FlavorColor.disableButton : FlavorColor.primaryButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTapDown: (_) => onTapButton.call(),
        child: Container(
            height: 40,
            width: width,
            margin: margin,
            decoration: BoxDecoration(color: colorButton, borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Center(child: Text(textButton))));
  }
}
