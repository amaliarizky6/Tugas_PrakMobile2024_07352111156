// import 'package:flutter/material.dart';
// import 'package:tugas/helpers/format_helper.dart';

// class ChartItem extends StatelessWidget {
//   final String imagePath;
//   final String name;
//   final String brand;
//   final int price;
//   final int count;
//   final VoidCallback onMin;
//   final VoidCallback onPlus;

//   const ChartItem({
//     super.key,
//     required this.imagePath,
//     required this.name,
//     required this.brand,
//     required this.price,
//     required this.count,
//     required this.onMin,
//     required this.onPlus,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 10),
//       child: Container(
//         height: 120,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(16),
//             color: const Color.fromARGB(56, 187, 187, 187)),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//           child: Column(children: [
//             Row(
//               children: [
//                 Expanded(
//                     child: Row(
//                   children: [
//                     SizedBox(
//                       width: 120,
//                       height: 110,
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(16),
//                         child: Image.asset(
//                           imagePath,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                         padding: const EdgeInsetsDirectional.symmetric(
//                             horizontal: 20),
//                         child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 name,
//                                 style: const TextStyle(
//                                     fontWeight: FontWeight.bold, fontSize: 16),
//                               ),
//                               Text(brand),
//                               Text(
//                                 formatToDollar(price),
//                                 style: const TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.blue),
//                               ),
//                             ])),
//                   ],
//                 )),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.delete),
//                       color: Colors.red,
//                       onPressed: () => {},
//                     ),
//                     Row(
//                       children: [
//                         IconButton(
//                           icon: const Icon(Icons.remove_circle_rounded),
//                           color: Colors.blueAccent,
//                           onPressed: onMin,
//                         ),
//                         Text(count.toString()),
//                         IconButton(
//                           icon: const Icon(Icons.add_circle_rounded),
//                           color: Colors.blueAccent,
//                           onPressed: onPlus,
//                         ),
//                       ],
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }