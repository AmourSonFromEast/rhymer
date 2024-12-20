import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class SettingsToggleCard extends StatelessWidget {
  const SettingsToggleCard({
    super.key,
    this.onChanged,
    required this.value,
    required this.title,
  });
  final ValueChanged<bool>? onChanged;
  final bool value;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
      child: BaseContainer(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: theme.textTheme.titleMedium?.copyWith(
                fontSize: 18,
              ),
            ),
            CupertinoSwitch(value: value, onChanged: onChanged)
          ],
        ),
      ),
    );
  }
}
