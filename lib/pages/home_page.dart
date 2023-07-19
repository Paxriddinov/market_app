import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Cars',
          style: TextStyle(fontSize: 25, color: Colors.red),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //Categories
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, 'All'),
                    singleTab(false, 'Red'),
                    singleTab(false, 'Blue'),
                    singleTab(false, 'Green'),
                    singleTab(false, 'Yellow'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              //Body
              makeItem(
                  'assets/images/im_car1.jpg', 'Ferrari', 'Electric', "2000\$"),
              makeItem(
                  'assets/images/im_car2.jpg', 'Ferrari', 'Electric', "2000\$"),
              makeItem(
                  'assets/images/im_car3.jpg', 'Ferrari', 'Electric', "2000\$"),
              makeItem(
                  'assets/images/im_car4.png', 'Ferrari', 'Electric', "2000\$"),
              makeItem(
                  'assets/images/im_car5.jpg', 'Ferrari', 'Electric', "2000\$"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeItem(image, name, type, cost) {
  return Container(
    height: 250,
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.grey[400]!,
            offset: const Offset(0, 10),
          )
        ]),
    child: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.7),
            Colors.black.withOpacity(0.4),
            Colors.black.withOpacity(0.2),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                type,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Text(
              cost,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.thumb_up_alt_outlined,
              size: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget singleTab(bool isSelected, String title) {
  return AspectRatio(
    aspectRatio: 2.2 / 1,
    child: Container(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.red : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
          child: Text(
        title,
        style: TextStyle(
            fontSize: isSelected ? 20 : 17,
            color: isSelected ? Colors.white : Colors.black),
      )),
    ),
  );
}
