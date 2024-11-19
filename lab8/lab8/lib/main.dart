import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title:const Text('Wireframe Layout'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Title and Description
//                  const Expanded(
//                     flex: 2,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Title',
//                           style: TextStyle(
//                               fontSize: 24, fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(height: 8),
//                         Text(
//                           'Description',
//                           style: TextStyle(fontSize: 16),
//                         ),
//                       ],
//                     ),
//                   ),
//                  const SizedBox(width: 16),
//                   // Image
//                   Expanded(
//                     flex: 3,
//                     child: Container(
//                       height: 150,
//                       color: Colors.grey[300], // Placeholder for image
//                       child: Center(
//                         child: Image.asset('assets/images/image1.jpg')
//                         ),
//                     ),
//                   ),
//                 ],
//               ),
//                const   SizedBox(height: 16),
//               // Additional Text and Description at the bottom

//               Column(

//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                  const Text(
//                     'Text',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 const  SizedBox(height: 4),
//                   Text(
//                     'Description',
//                     style: TextStyle(fontSize: 14, color: Colors.grey[700]),
//                   ),
//                 ],
//               ),
//             const  SizedBox(height: 16),
//               // Icon and Text Button Section
//             const  Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Icon(Icons.home),
//                             Icon(Icons.search),
//                             Icon(Icons.settings),

//                           ],
//                         ),
//                         SizedBox(height: 8),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text('Text 1'),
//                             Text('Text 2'),
//                             Text('Text 3'),

//                           ],
//                         ),
//                       ],

//                     ),
//                   ),
//                 ],
//               ),
//             const   SizedBox(height: 16),
//              const Column(
//                    children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Icon(Icons.home),
//                             Icon(Icons.search),
//                             Icon(Icons.settings),

//                           ],
//                         ),
//                         SizedBox(height: 8),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text('Text 1'),
//                             Text('Text 2'),
//                             Text('Text 3'),

//                           ],
//                         ),
//                    ]
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
var arrayItem = ["hello","world"];
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // home:  Scaffold(
      //   body: Center(
      //     child: Column(mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //      const Text("Welcome"),
      //        ElevatedButton(
      //          onPressed: () {
      //           Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => const MyHomePage(
      //             title: "Secend Page",
      //           ),
      //         ),
      //         );
      //     },
      //     child: const Text("Get Started"),
      //   )
      //     ],
      //     ),
      //   ),
      // )
      body: ListView.builder(itemBuilder: (context, index) {
        return Text(arrayItems[index]);
      },
      itemCount: arrayItems.length,
      ),
    );
  }
}
