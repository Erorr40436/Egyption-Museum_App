import 'package:flutter/material.dart';
import 'package:museum/core/widgets/custom_search_bar.dart';
import 'package:museum/features/favorite/view/widgets/custom_favorite_card.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomSearchBar(), CustomFavoriteCard()]);
  }
}
