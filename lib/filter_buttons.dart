import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Filter extends StatefulWidget {
  const Filter({
    Key? key,
    required this.text,
    required this.bottom,
    required this.top,
    required this.left,
    required this.right,
  }) : super(key: key);
  final String text;
  final double bottom, top, left, right;

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 19.44,
      width: 85.56,
      child: ChoiceChip(
        onSelected: (value) {

        },
          selectedColor: const Color(0xff6610f2),
          backgroundColor: const Color(0xfff2f3f5),
          labelPadding: EdgeInsets.only(
              bottom: widget.bottom,
              top: widget.top,
              right: widget.right,
              left: widget.left),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3)
            ),
          label: Text(
            widget.text,
            style: GoogleFonts.manrope(
              fontSize: 11.1,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          selected: isSelected),
    );
  }
}
