import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  const CardData({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.72,
      children: List.generate(4, (index) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff232227),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 8,
              ),
            ],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemScreen");
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/burger1.png", // Correct dynamic path
                    height: 140,
                    width: 140,
                    fit: BoxFit.cover, // Ensures the image fits within the container
                  ),
                ),
              ),
              
               const Text(
              "Cheese Burger", // Example title text
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Hot Burger", // Example subtitle text
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 5,),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("\$55",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                   Spacer(),
                  Icon(Icons.add_shopping_cart,
                   color: Colors.white,)
                ],
              ),)
            ],
          ),
        );
      }),
    );
  }
}
//  InkWell(
//   onTap: () {
//     // Handle tap action
//   },
//   child: Card(
//     elevation: 10, // Adds shadow to the card
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(10), // Rounded corners
//     ),
//     color: const Color(0xff232227), // Background color for the card
//     child: SizedBox(
//       height: 200,
//       width: 150,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(10), // Optional image rounding
//               child: Image.asset(
//                 "assets/burger1.png",
//                 height: 100,
//                 width: 100,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(height: 10), // Add spacing
//             const Text(
//               "Cheese Burger", // Example title text
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const Text(
//               "Hot Burger", // Example subtitle text
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 14,
//               ),
//             ),
//             Text(
//               "55", // Example title text
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
            
//           ],
//         ),
//       ),
//     ),
//   ),
// )
