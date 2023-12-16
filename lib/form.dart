import'package:flutter/material.dart';

class FormFields extends StatefulWidget {
  final String name;
  final IconData? icon;
  final IconData? star;
  final String hint;
  final IconData? end_icon;
  const FormFields({Key? key,
    required this.name,
    this.icon,
    this.star,
    required this.hint,
    this.end_icon,
  }) : super(key: key);

  @override
  State<FormFields> createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(widget.name,
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
                Icon(widget.star,
                  color: Colors.red,
                  size: 7,
                )
              ],
            ),
            Icon(widget.icon,
              color: Colors.grey,
            )
          ],
        ),
        SizedBox(height: 5,),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(2),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            hintText: widget.hint,
            suffixIcon: Icon(widget.end_icon,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
