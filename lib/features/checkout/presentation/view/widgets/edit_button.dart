import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:makanges_app/core/utils/app_router.dart';
import 'package:makanges_app/core/utils/styles.dart';

class EditButton extends StatelessWidget {
  const EditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.edit_note_rounded,
          color: Color(0xFF19A83E),
          size: 32,
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Edit',
            style: Styles.textGreenStyle16,
          ),
        ),
      ],
    );
  }
}
