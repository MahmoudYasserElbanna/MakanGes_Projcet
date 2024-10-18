import 'package:flutter/material.dart';
import 'package:makanges_app/core/utils/styles.dart';

class EditButton extends StatelessWidget {
  const EditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        VerticalDivider(
          width: 12,
          indent: 12,
          endIndent: 12,
          color: Color(0xFF19A83E),
          thickness: 2,
        ),
        Icon(
          Icons.edit_note_rounded,
          color: Color(0xFF19A83E),
          size: 32,
        ),
        SizedBox(width: 8),
        Text(
          'Edit',
          style: Styles.textGreenStyle16,
        ),
      ],
    );
  }
}
