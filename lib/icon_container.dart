import'package:flutter/material.dart';
class IconContainer extends StatelessWidget {
  final IconData name;
  const IconContainer({Key? key,
    required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        child: Icon(name),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            border: Border.all(
              color: Colors.grey,
              width: 2,
            )
        ),
      ),
    );
  }
}
