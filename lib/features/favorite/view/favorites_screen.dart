import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_test/ui/ui.dart';

@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            title: Text('Избранное'),
            elevation: 0,
            surfaceTintColor: Colors.transparent,
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverList.builder(
            itemBuilder: (context, index) =>  RhymeListCard(
              isFavorite: true,
              rhyme: 'Рифма',
              sourceWord: 'Слово',
            ),
          ),
        ],
      ),
    );
  }
}
