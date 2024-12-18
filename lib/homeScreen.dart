import 'package:flutter/material.dart';
import 'package:flutter_task2/bottom_nav_bar.dart';
import 'package:flutter_task2/wedget/card_data.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String selectedButton = 'Burger';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.sort,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hot & Fast Food",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Delievers on Time",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedButton = "Burger";
                      });
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: selectedButton == "Burger"
                          ? Colors.white
                          : Colors.grey,
                    ),
                    child: const Text("Burger"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedButton = "Pizza";
                      });
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: selectedButton == "Pizza"
                          ? Colors.white
                          : Colors.grey,
                    ),
                    child: const Text("Pizza"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedButton = "Cheese";
                      });
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: selectedButton == "Cheese"
                          ? Colors.white
                          : Colors.grey,
                    ),
                    child: const Text("Cheese"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedButton = "Pasta";
                      });
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: selectedButton == "Pasta"
                          ? Colors.white
                          : Colors.grey,
                    ),
                    child: const Text("Pasta"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
          CardData(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
