import 'package:flutter/material.dart';
import 'package:water_products/core/extension/app_localization_extension.dart';

class NoFavouriteProducts extends StatelessWidget {
  const NoFavouriteProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min, // 👈 keeps it centered vertically
          children: [
            // 🔹 Icon / Illustration
            Icon(Icons.favorite_border, size: 80, color: Colors.grey.shade400),

            const SizedBox(height: 16),

            Text(
              context.local.noFavoritesTitle,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Text(
              context.local.noFavoritesSubtitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
            ),

            const SizedBox(height: 20),

            // 🔹 Action Button (optional)
          ],
        ),
      ),
    );
  }
}
