import 'package:cached_network_image/cached_network_image.dart';
import 'package:daily_astropic/utils/extensions/date_format_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../models/picture.dart';

class FavouritesList extends StatelessWidget {
  final List<Picture> favourites;
  const FavouritesList({
    super.key,
    required this.favourites,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(height: 24),
      itemCount: favourites.length,
      itemBuilder: (context, index) {
        final favourite = favourites[index];
        return ListTile(
          onTap: () => context.push(
            '/favourites-details',
            extra: favourite,
          ),
          leading: SizedBox(
            width: 90,
            child: CachedNetworkImage(
              imageUrl: favourite.hdurl != null ? favourite.hdurl! : favourite.thumbnailUrl!,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          title: Text(
            favourite.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            favourite.date.formatDate(),
            style: const TextStyle(
              fontSize: 13,
            ),
          ),
        );
      },
    );
  }
}
