import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chats extends StatelessWidget {
  const Chats({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.message,
    required this.totalMessages,
  }) : super(key: key);

  final String name, imagePath, message, totalMessages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.66,horizontal: 1),
      child: SizedBox(
        height: 62.57,
        width: 360,// Adjust the desired height
        child: ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 30, // Adjust the desired radius
          ),
          title: Text(
            name,
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w700,
              fontSize: 14, // Adjust the desired font size
            ),
          ),
          subtitle: Text(
            message,
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w500,
              fontSize: 14, // Adjust the desired font size
            ),
          ),
          trailing: Badge(
            backgroundColor: const Color(0xff201f68),
            label: Text(
              totalMessages,
              style: GoogleFonts.manrope(
                fontSize: 12, // Adjust the desired font size
                fontWeight: FontWeight.w500,
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 7),
            largeSize: 23,
          ),
        ),
      ),
    );
  }
}
