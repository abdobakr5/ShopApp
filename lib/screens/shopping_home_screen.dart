import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/ProductCard.dart';

class ShoppingHomeScreen extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'name': 'nike_shoes',
      'image': 'https://images.unsplash.com/photo-1600269452121-4f2416e55c28?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.1.0',
      'price': '120'
    },
    {
      'name': 'adidas_jacket',
      'image': 'https://images.unsplash.com/photo-1603252109303-2751441dd157?w=400',
      'price': '90'
    },
    {
      'name': 'smart_watch',
      'image': 'https://images.unsplash.com/photo-1517420879524-86d64ac2f339?q=80&w=1026&auto=format&fit=crop&ixlib=rb-4.1.0',
      'price': '150'
    },
  ];

  final List<Map<String, String>> offers = [
    {
      'name': 'wireless_earbuds',
      'image': 'https://images.unsplash.com/photo-1667178173387-7e0cb51c0b4f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0',
      'price': '50'
    },
    {
      'name': 'gaming_mouse',
      'image': 'https://images.unsplash.com/photo-1613141412501-9012977f1969?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0',
      'price': '40'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shopping_home'.tr()),
        backgroundColor: Colors.blue[800],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    name: products[index]['name']!.tr(), // ← هنا الترجمة
                    imageUrl: products[index]['image']!,
                    price: products[index]['price']!,
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "offers_title".tr(),
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[700],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: offers.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    name: offers[index]['name']!.tr(), // ← هنا الترجمة
                    imageUrl: offers[index]['image']!,
                    price: offers[index]['price']!,
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
