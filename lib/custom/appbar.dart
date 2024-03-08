import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onBack;

  const MyAppBar({Key? key, this.onBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox.shrink(),
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
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
