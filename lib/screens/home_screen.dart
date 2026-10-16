import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_card.dart';
import 'product_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<Product> products = [
    Product(
      title: 'Nike Air Max 270',
      description: 'Comfortable lifestyle sneakers with lightweight cushioning and a modern sporty design.',
      image: 'https://picsum.photos/seed/nike270/800/500',
      price: 160,
      rating: 4.8,
      categories: ['Sneakers', 'Nike', 'Lifestyle'],
    ),
    Product(
      title: 'Adidas Ultraboost',
      description: 'Running shoes designed for comfort, energy return and everyday performance.',
      image: 'https://picsum.photos/seed/adidasboost/800/500',
      price: 190,
      rating: 4.7,
      categories: ['Running', 'Adidas', 'Sport'],
    ),
    Product(
      title: 'New Balance 550',
      description: 'Retro basketball-inspired sneakers with a clean everyday streetwear style.',
      image: 'https://picsum.photos/seed/nb550/800/500',
      price: 140,
      rating: 4.6,
      categories: ['Casual', 'New Balance', 'Streetwear'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sneaker Store')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              'Discover',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 6),

            const Text(
              'Find your next pair',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 24),

            ...products.map(
              (product) => ProductCard(
                product: product,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailScreen(product: product),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
