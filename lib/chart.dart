// import 'package:flutter/material.dart';
//
// class Chart extends StatefulWidget {
//   const Chart({Key? key}) : super(key: key);
//
//   @override
//   State<Chart> createState() => _ChartState();
// }
//
// class _ChartState extends State<Chart> {
//   String title = 'Name';
//   int initalIndex = 0;
//   final List data = ['Name', 'Class'];
//   bool isSelected=false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: 50,
//               ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     withColorboxes('Name', Colors.purple),
//                     withColorboxes('Class', Colors.green),
//
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               SizedBox(
//                 height: 40,
//                 width: double.infinity,
//                 child: ListView.builder(
//                     primary: false,
//                     scrollDirection: Axis.horizontal,
//                     itemCount: data.length,
//                     itemBuilder: (context, index) {
//                       return GestureDetector(
//                         onTap: () {
//                           initalIndex = index;
//                           setState(() {});
//                         },
//                         child: Container(
//                           margin: const EdgeInsets.symmetric(horizontal: 5),
//                           padding: const EdgeInsets.symmetric(horizontal: 8),
//                           height: 30,
//                           decoration: BoxDecoration(
//                               color: initalIndex == index
//                                   ? Colors.brown.shade600
//                                   : Colors.grey.shade200,
//                               border: Border.all(
//                                   color: initalIndex == index
//                                       ? Colors.black
//                                       : Colors.transparent)),
//                           child: Center(
//                               child: Text(
//                             data[index],
//                             style: TextStyle(
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                                 color: initalIndex == index
//                                     ? Colors.white
//                                     : Colors.brown),
//                           )),
//                         ),
//                       );
//                     }),
//               ),
//               boxes('Name'),
//               boxes('Roll No'),
//               SizedBox(height: 40,),
//               GestureDetector(
//                 onTap: (){
//                   isSelected=!isSelected;
//                   setState(() {
//
//                   });
//                 },
//                 child: Container(
//                   height: 40,
//                   width: 50,
//                   color:isSelected?Colors.red:Colors.black.withOpacity(0.6),
//                 ),
//               ),
//               SizedBox(height: 20,),
//               GestureDetector(
//                 onTap: (){
//                   isSelected=!isSelected;
//                   setState(() {
//
//                   });
//                 },
//                 child: Container(
//                   height: 40,
//                   width: 50,
//                   color:isSelected?Colors.green:Colors.black.withOpacity(0.6),
//                 ),
//               ),
//               SizedBox(height: 20,),
//               //CA(),
//               SizedBox(height:5,),
//
//               CA(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget  withColorboxes(String text, Color color) {
//     return GestureDetector(
//       onTap: () {
//         title = text;
//         setState(() {});
//       },
//       child: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 5),
//         padding: const EdgeInsets.symmetric(horizontal: 8),
//         height: 30,
//         decoration: BoxDecoration(
//             color: title == text ? color.withOpacity(0.5) : Colors.grey,
//             border: Border.all(
//                 color: title == text ? Colors.black : Colors.transparent)),
//         child: Center(
//             child: Text(
//           text,
//           style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.bold,
//               color: title == text ? Colors.white : Colors.brown),
//         )),
//       ),
//     );
//   }
//   Widget boxes(String text,) {
//     return GestureDetector(
//       onTap: () {
//         title = text;
//         setState(() {});
//       },
//       child: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 5),
//         padding: const EdgeInsets.symmetric(horizontal: 8),
//         height: 30,
//         decoration: BoxDecoration(
//             color: title == text ? Colors.blue : Colors.grey,
//             border: Border.all(
//                 color: title == text ? Colors.black : Colors.transparent)),
//         child: Center(
//             child: Text(
//           text,
//           style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.bold,
//               color: title == text ? Colors.white : Colors.brown),
//         )),
//       ),
//     );
//   }
// }
