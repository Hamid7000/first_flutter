import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          width: 60, // Set width for the square shape
          height: 60, // Set height for the square shape
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
          child: Icon(
            icon,
            color: Colors.cyan,
            size: 30, // Adjust icon size
          ),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text("See More", style: TextStyle(color: Colors.cyan)),
      ],
    );
  }
}

class SpecialCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const SpecialCard({
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 180,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover, // Ensure the image covers the entire card
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5), // Add a semi-transparent overlay for better readability
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(), // Push the text to the bottom
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//
// class PopularProductCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Icon(Icons.videogame_asset, size: 50),
//             ),
//           ),
//           SizedBox(height: 10),
//           Text("Product Name", style: TextStyle(fontWeight: FontWeight.bold)),
//           SizedBox(height: 5),
//           Text("\$100", style: TextStyle(color: Colors.cyan)),
//         ],
//       ),
//     );
//   }
// }

class ProductDetailWidget extends StatelessWidget {
  final String productName;
  final String brandName;
  final String productDescription;
  final double price;
  final String imagePath;

  const ProductDetailWidget({
    required this.productName,
    required this.brandName,
    required this.productDescription,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0), // Reduced top gap
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image with Rounded Top Corners
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), // Rounded top-left
              topRight: Radius.circular(15), // Rounded top-right
            ),
            child: Image.asset(
              imagePath,
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Product Details with Border and Rounded Bottom Corners
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(55), // Rounded bottom-left
                topRight: Radius.circular(25), // Rounded bottom-right
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0), // Inner padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    brandName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    productDescription,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Price and Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.deepOrange,
                        ),
                        onPressed: () {
                          // Handle favorite action
                        },
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                        ),
                        onPressed: () {
                          // Handle Buy Now action
                        },
                        child: Text(
                          'Buy for \$${price.toStringAsFixed(2)}',
                          style: TextStyle(fontSize: 16,color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
