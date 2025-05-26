import 'package:flutter/material.dart';

class ServiceCard {
  final String title;
  final String subtitle;
  final String icon;
  final String backImage;

  ServiceCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.backImage,
  });

  Widget buildCard(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => Scaffold(
                  appBar: AppBar(),
                  body: Center(
                    child: Text(
                      'You Tapped on: $title',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
          ),
        );
      },
      child: Container(
        height: h * 0.1,
        margin: EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.01),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white24, width: 2),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.darken,
                ),
                child: Image.asset(backImage, fit: BoxFit.cover),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    height: h * 0.07,
                    width: h * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(icon),
                  ),
                  title: Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Claim-text',
                      color: Colors.white,
                      fontSize: w * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    subtitle,
                    style: TextStyle(color: Colors.white, fontSize: w * 0.032),
                  ),
                  trailing: Image.asset(
                    'assets/images/icon.png',
                    height: h * 0.025,
                    width: w * 0.04,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
