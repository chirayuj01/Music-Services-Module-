import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../viewmodel/Home_viewmodel.dart';
import '../widgets/BookButton.dart';
import '../widgets/Header.dart';
import '../widgets/service_tile.dart';

Widget HomePageWidget(BuildContext context) {
  var assets=[
    {
      'icon':'assets/images/servicetile/tileicons/icon 1.png',
      'background':'assets/images/servicetile/tileimages/img1.png',
    },
    {
      'icon':'assets/images/servicetile/tileicons/icon 2.png',
      'background':'assets/images/servicetile/tileimages/img2.png',
    },
    {
      'icon':'assets/images/servicetile/tileicons/icon 3.png',
      'background':'assets/images/servicetile/tileimages/img3.png',
    },
    {
      'icon':'assets/images/servicetile/tileicons/icon 4.png',
      'background':'assets/images/servicetile/tileimages/img4.png',
    },
  ];
  double h = MediaQuery.of(context).size.height;
  double w = MediaQuery.of(context).size.width;
  return Column(
    children: [
      Container(
        height: h * 0.45,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(w * 0.04),
            bottomRight: Radius.circular(w * 0.04),
          ),
          gradient: LinearGradient(
            colors: [Color(0xFFA90140), Color(0xFF550120)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildSearchBarRow(context),
                  SizedBox(height: h * 0.03),
                  Text(
                    'Claim your',
                    style: TextStyle(
                      fontFamily: 'Claim-text',
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: w * 0.05,
                    ),
                  ),
                  Text(
                    'Free Demo',
                    style: TextStyle(
                      fontFamily: 'Free-Demo',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: w * 0.13,
                    ),
                  ),
                  Text(
                    'for custom Music Production',
                    style: TextStyle(color: Colors.white, fontSize: w * 0.035),
                  ),
                  SizedBox(height: h * 0.025),
                  BookButtonWidget(context),
                ],
              ),
              Positioned(
                bottom: h * 0.002,
                left: -w * 0.15,
                child: Image.asset('assets/vectors/vec2.png', height: h * 0.2),
              ),
              Positioned(
                bottom: h * 0.01,
                right: -w * 0.15,
                child: Image.asset('assets/vectors/vec1.png', height: h * 0.2),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: h * 0.02),
      Text('Hire hand-picked Pros for popular music services',style: TextStyle(
        color: Colors.white,
        fontSize: w*0.035,
        fontWeight: FontWeight.bold,
        fontFamily: 'Claim-text'
      ),),
      SizedBox(height: h * 0.02),
      Expanded(
        child: Consumer<HomeViewModel>(
          builder: (context, model, _) {
            if (model.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: model.services.length,
              itemBuilder: (context, index) {
                final service = model.services[index];
                final asset = assets[index];

                return ServiceCard(
                  title: service.title,
                  subtitle: service.subtitle,
                  icon: asset['icon']!,
                  backImage: asset['background']!,
                ).buildCard(context);
              },
            );
          },
        ),
      ),
      SizedBox(height: h*0.02,)
    ],
  );
}
