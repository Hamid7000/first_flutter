import 'package:flutter/material.dart';
import 'components.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
     appBar: AppBar(
       elevation: 0,
       backgroundColor: Colors.white,
       title: Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
       child: TextField(
         decoration: InputDecoration(
           hintText: "Search Product",
           prefixIcon: Icon(Icons.search, color: Colors.cyan),
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20),
             borderSide: BorderSide.none,
           ),
           filled: true,
           fillColor: Colors.grey[200],
         ),
       ),
       ),
       actions: [
         IconButton(
           icon: Icon(Icons.shopping_cart, color: Colors.cyan),
           onPressed: () {},
         ),
         IconButton(
           icon: Icon(Icons.notifications, color: Colors.cyan),
           onPressed: () {},
         ),
       ],
     ),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "Cashback 20%",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryItem(icon: Icons.flash_on, label: "Flash Deal"),
                  CategoryItem(icon: Icons.book_online, label: "Bill"),
                  CategoryItem(icon: Icons.videogame_asset, label: "Game"),
                  CategoryItem(icon: Icons.card_giftcard, label: "Daily Gift"),
                  CategoryItem(icon: Icons.more_horiz, label: "More"),
                ],
              ),
              SizedBox(height: 20),

              SectionTitle(title: "Special For You",),
              SizedBox(
                height: 200, // Set a fixed height for the scrollable content
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SpecialCard(
                        title: "Smartphone",
                        subtitle: "18 Brands",
                        imagePath: 'assets/mobile.jpeg',
                      ),
                      SpecialCard(
                        title: "Fashion",
                        subtitle: "24 Brands",
                        imagePath: 'assets/fashion.jpg',
                      ),
                      SpecialCard(
                        title: "Accessories",
                        subtitle: "16 Brands",
                        imagePath: 'assets/accessories.png',
                      ),
                      SpecialCard(
                        title: "Laptops",
                        subtitle: "8 Brands",
                        imagePath: 'assets/laptops.webp',
                      ),
                    ],
                  ),
                ),
              ),



              // SectionTitle(title: "Popular Product"),
              // SizedBox(height: 10),
              // GridView.builder(
              //   physics: NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //   crossAxisCount: 2,
              //   mainAxisSpacing: 10,
              //   crossAxisSpacing: 10,
              //   childAspectRatio: 0.75,
              // ),
              //     itemCount: 4,
              //     itemBuilder: (context, index){
              //   return PopularProductCard();
              //     },
              // ),
            ],
          ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
          selectedItemColor: Colors.cyan,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
