import 'package:flutter/material.dart';

Widget buildSearchBarRow(BuildContext context) {
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: w * 0.03, vertical: h*0.02),
    child: Row(
      children: [
        Expanded(
          child: Container(
            height: w * 0.12,
            decoration: BoxDecoration(
              color: const Color(0xFF2B2A30),
              borderRadius: BorderRadius.circular(w*0.04),
            ),
            padding: EdgeInsets.symmetric(horizontal: w*0.03),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.white, size: w*0.06),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      hintText: 'Search “Punjabi Lyrics”',
                      hintStyle: TextStyle(color: Colors.white60, fontSize: 15),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                VerticalDivider(
                  color: Colors.white24,
                  thickness: 1,
                  width: w * 0.06,
                ),
                InkWell(
                    onTap: (){},
                    child: Icon(Icons.mic, color: Colors.white, size: w*0.06)
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: w * 0.02),
        InkWell(
          onTap: (){},
          child: Container(
            height: w * 0.1,
            width: w * 0.1,
            padding: const EdgeInsets.all(2),
            child: Image.asset('assets/images/profile.png'),
          ),
        ),
      ],
    ),
  );
}
