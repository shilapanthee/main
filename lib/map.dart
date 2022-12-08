import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

String location = "pick location";

class map extends StatefulWidget {
  const map({super.key});

  @override
  State<map> createState() => _mapState();
}

class _mapState extends State<map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OpenStreetMapSearchAndPick(
        center: LatLong(23, 89),
        buttonColor: Colors.blue,
        buttonText: 'Set Current Location',
        onPicked: (pickedData) {},
      ),
    );

    // location = pickedData.location;
  }
}

//       SingleChildScrollView(
//         child: Column(children: [
//           Row(
//             children: [
//               Text("Destion"),
//               SizedBox(
//                 width: 200,
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => _showModel(context)));
//                 },
//                 child: Text("select your destination"),
//               ),
//             ],
//           ),
//         ]),
//       ),
//     );
//   }
// }ß

// Widget _showModel(BuildContext context) {
//   showBottomSheet(
//       context: context,
//       builder: (context) {
//         return Container(
//             height: 200,
//             child: OpenStreetMapSearchAndPick(
//                 center: LatLong(23, 89),
//                 buttonColor: Colors.blue,
//                 buttonText: 'Set Current Location',
//                 onPicked: (pickedData) {
//                   // location = pickedData.location;
//                 }));
//       });
// }
