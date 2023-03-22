import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCategoryWidget extends StatelessWidget {
  String icons;
  String text;
  bool isSelect;

  ItemCategoryWidget({
    required this.icons,
    required this.text,
    required this.isSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 14,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 14.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: isSelect
            ? const Color(0xff349DFD).withOpacity(0.15)
            : const Color(0xffEEEEEE).withOpacity(0.5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 24.0,
          ),
          SvgPicture.asset(
            "assets/icons/$icons.svg",
            color: const Color(0xff349DFD),
            height: 20.0,
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: isSelect ? Colors.black : Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}
