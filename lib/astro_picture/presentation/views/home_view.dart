import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('Daily Astro Picture'),
        actions: [
          IconButton(
            onPressed: () => context.push('/favourites'),
            padding: const EdgeInsets.all(16),
            icon: const Icon(
              Icons.bookmarks_rounded,
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/landing.svg',
              ),
              OutlinedButton(
                onPressed: () => context.push('/picture-details'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 44,
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Daily Picture',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward_rounded)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
