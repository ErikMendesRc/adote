import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String text;
  final String subtitle;
  final Function() iconOnPressed;
  final Widget icon;
  const CustomHeader(
      {required this.text,
      this.subtitle = "",
      required this.icon,
      required this.iconOnPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.red)),
            Text(
              subtitle,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.red),
            ),
          ],
        ),
        IconButton(
          icon: icon,
          onPressed: iconOnPressed,
        )
      ],
    );
  }
}
