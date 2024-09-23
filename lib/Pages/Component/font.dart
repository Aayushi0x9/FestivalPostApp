// import 'package:festival_post_app/Pages/Component/fontColour.dart';
// import 'package:festival_post_app/headers.dart';
//
// Widget fontEdit(
//     {required Size size, required fontdamily, required getSetstate}) {
//   return Column(
//     children: [
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.font_download_rounded,
//               color: Colors.white70,
//             ),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.text_snippet,
//               color: Colors.white70,
//             ),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.format_color_fill,
//               color: Colors.white70,
//             ),
//           ),
//         ],
//       ),
//       Visibility(
//         visible: fontdamily,
//         child: SizedBox(
//           height: size.height * 0.27, // Set a fixed height for the ListView
//           child: ListView.separated(
//             shrinkWrap: true, // Ensures ListView does not take infinite height
//             itemBuilder: (context, index) {
//               // Ensure the item is treated as a String
//               final font = fontFamilies[index];
//               return GestureDetector(
//                 onTap: () {
//                   fontFamily = font as String; // Make sure 'font' is a String
//                   getSetstate();
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8),
//                   child: Text(
//                     textAlign: TextAlign.center,
//                     font.toString(), // Convert to String to avoid casting issues
//                     style: TextStyle(
//                       fontFamily:
//                           font.toString(), // Ensure it's a String here too
//                       fontSize: 20,
//                       color: fontFamily == font ? Colors.blue : Colors.white,
//                     ),
//                   ),
//                 ),
//               );
//             },
//             separatorBuilder: (context, index) => const SizedBox(
//               height: 10,
//             ),
//             itemCount: fontFamilies.length,
//           ),
//         ),
//       ),
//       fontColor(fontColor: fontColor, getSetstate: getSetstate)
//     ],
//   );
// }
