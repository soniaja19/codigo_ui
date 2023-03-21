import 'package:flutter/material.dart';

class ItemsHistoryWidget extends StatelessWidget {
  const ItemsHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 12.0,
              offset: const Offset(4, 4)),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/cars1.jpg",
            height: 50,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Black Asarimi ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xff2A4055),
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Desa Majumunrra ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color(0xff2A4055).withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "05 Sep 2023 ",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: const Color(0xff2A4055).withOpacity(0.7),
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "\$30.00 ",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xff39B090),
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
