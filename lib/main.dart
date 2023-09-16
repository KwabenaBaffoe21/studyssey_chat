import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chats.dart';
import 'filter_buttons.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chat(),
    ),
  );
}

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 11.11, bottom: 11.11, right: 31.11, left: 31.11),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.sort),
                  ),
                  const SizedBox(width: 104),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.46),
                    child: Text(
                      'Chat',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500, fontSize: 13.33),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 11.1, right: 31.11, left: 31.11),
              child: SearchBar(
                leading: const Icon(
                  Icons.search,
                  size: 11.6,
                  color: Color(0xff9f9f9f),
                ),
                hintText: 'Search',
                hintStyle: MaterialStateProperty.all(
                  GoogleFonts.manrope(
                    fontSize: 13.33,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff9f9f9f),
                  ),
                ),
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStatePropertyAll(
                  BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.only(left: 28),
                ),
                backgroundColor: const MaterialStatePropertyAll(
                  Color(0x0f9f9f9f),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 11.1, right: 31.11, left: 31.11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Filter(
                      text: 'All', bottom: 2.22, top: -6, left: 28, right: 28),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Filter(
                        text: 'Personal',
                        bottom: 2.22,
                        top: -6,
                        left: 14,
                        right: 14),
                  ),
                  Filter(
                      text: 'Group', bottom: 2.22, top: -6, left: 22, right: 22)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11.1),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (),
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomAppBar(
          height: 56.67,
        ),
      ),
    );
  }
}
