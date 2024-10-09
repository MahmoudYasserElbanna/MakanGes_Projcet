import 'package:flutter/material.dart';
import 'package:makanges_app/constants.dart';
import 'package:makanges_app/core/utils/assets.dart';
import 'package:makanges_app/core/utils/styles.dart';

class PersonaInfo extends StatelessWidget {
  const PersonaInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          child: Image.asset(Assets.personalImage),
        ),
        const SizedBox(width: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deliver To',
              style: Styles.textStyle12
                  .copyWith(color: const Color(0xFF333333).withOpacity(0.7)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: kPrimaryColor,
                ),
                const Text(
                  'My Home',
                  style: Styles.textStyle12,
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
