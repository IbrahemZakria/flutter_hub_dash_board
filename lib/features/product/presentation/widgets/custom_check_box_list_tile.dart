import 'package:flutter/material.dart';

class CustomCheckBoxListTile extends StatefulWidget {
  const CustomCheckBoxListTile({
    super.key,
    required this.title,
    required this.onChanged,
    this.initialValue = false,
  });

  final ValueChanged<bool?> onChanged;
  final String title;
  final bool initialValue;

  @override
  State<CustomCheckBoxListTile> createState() => _CustomCheckBoxListTileState();
}

class _CustomCheckBoxListTileState extends State<CustomCheckBoxListTile> {
  bool state = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.title),
      value: state,
      onChanged: (value) {
        setState(() {
          state = !state;
        });
        widget.onChanged(value);
      },
    );
  }
}
