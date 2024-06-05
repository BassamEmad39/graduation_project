import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onBack;
  const MyAppBar({super.key, this.onBack});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const SizedBox.shrink(),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "images/logo (1).png",
            height: 40,
            width: 100,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
