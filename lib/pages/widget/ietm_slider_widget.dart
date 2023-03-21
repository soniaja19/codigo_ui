import 'package:flutter/material.dart';

class ItemSliderWidget extends StatelessWidget {
  const ItemSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // se utilizar para darle una altura y ancho según el tamaño de nuestro dispositivo
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      // color: Colors.amber,
      constraints: BoxConstraints(
        maxWidth: width * 0.38,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: width * 0.38,
              height: height * 0.10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://tec.com.pe/wp-content/uploads/2017/12/google-maps.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "Block C Benyamin -  SJL PERU",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color(0xff2A4055),
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Avenida Central 265, San Juan Luri ",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: const Color(0xff2A4055).withOpacity(0.7),
                fontWeight: FontWeight.w500,
                fontSize: 13.0,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "Open ",
                  style: TextStyle(
                    color: const Color(0xff43B995).withOpacity(0.7),
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  "07:00 22:00 ",
                  style: TextStyle(
                    color: const Color(0xff2A4055).withOpacity(0.7),
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
