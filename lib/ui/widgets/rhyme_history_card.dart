import 'package:flutter/material.dart';
import 'package:flutter_application_test/ui/ui.dart';

class RhymeHistoryCard extends StatelessWidget {
  const RhymeHistoryCard({
    super.key,
    required this.rhymes,
  });

  final List<String> rhymes;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BaseContainer(
      width: 200,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Slovo",
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          Flexible(
            child: Text(rhymes.map((e) => '$e,').join(),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
            ),
          ),
          // Wrap(
          //   children: rhymes
          //       .map((e) => Padding(
          //             padding: const EdgeInsets.only(right: 8),
          //             child: Text(e),
          //           ))
          //       .toList(),
          // ),
        ],
      ),
    );
  }
}
