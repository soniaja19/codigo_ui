import 'package:flutter/material.dart';

class Example4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.amber,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          ),
        ),
        gradient: LinearGradient(
          colors: [Colors.indigo, Colors.pinkAccent],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: const [
            TextField(),
          ],
        ),
      ),
    );
    //return  Scaffold(
    // Primera Opcion
    //body: Container(
    //   width: double.infinity,
    //   decoration: const BoxDecoration(
    //     color: Colors.amber,
    //     image: DecorationImage(
    //       fit: BoxFit.cover,
    //       image: NetworkImage(
    //         "https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    //       ),
    //     ),
    //   ),
    //   child: Column(
    //     children: const [
    //       Text("Burger"),
    //       TextField(),
    //     ],
    //   ),
    // ),

    ///Segunda opción
    // body: Stack(
    //   children: [
    //     Container(
    //       decoration: const BoxDecoration(
    //         image: DecorationImage(
    //           fit: BoxFit.cover,
    //           image: NetworkImage(
    //             "https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    //           ),
    //         ),
    //       ),
    //     ),
    //     Column(
    //       children: const [
    //         Text("Burger"),
    //         TextField(),
    //       ],
    //     )
    //   ],
    // ),
    //);
  }
}
