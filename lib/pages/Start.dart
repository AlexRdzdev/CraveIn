import 'dart:async';

import 'package:cravein/theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  static const String routeName = 'Start';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: botonInicio(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: AppColors.orange,
      body: Stack(
        children: [
          mapa(),
          logo(),
          titulo(),
        ],
      ),
    );
  }

  Container titulo() {
    return Container(
      margin: EdgeInsets.only(bottom: 95),
      alignment: Alignment.bottomCenter,
      child: Text(
        "CRAVE IN",
        style: TextStyle(
          fontSize: 120,
          fontWeight: FontWeight.bold,
          letterSpacing: -20,
          color: AppColors.orange,
          fontFamily: "De Valencia",
        ),
      ),
    );
  }

  Container logo() {
    return Container(
      height: 300,
      margin: EdgeInsets.only(top: 150),
      alignment: Alignment.center,
      child: SvgPicture.asset('assets/svg/CraveIn Main-08.svg'),
    );
  }

  Container mapa() {
    CameraPosition initialPosition = CameraPosition(
      target: LatLng(31.734162, -106.429860),
      zoom: 14,
    );
    return Container(
      height: 700,
      child: GoogleMap(
        initialCameraPosition: initialPosition,
        zoomControlsEnabled: false,
        myLocationButtonEnabled: false,
        compassEnabled: false,
        rotateGesturesEnabled: false,
        tiltGesturesEnabled: false,
        buildingsEnabled: false,
      ),
    );
  }

  Container botonInicio(BuildContext context) {
    return Container(
      height: 50,
      width: 140,
      margin: EdgeInsets.only(bottom: 20),
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder()),
          side: MaterialStateProperty.all<BorderSide>(
              BorderSide(color: Colors.white)),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return AppColors.beige.withOpacity(0.9);
              return AppColors.beige;
            },
          ),
        ),
        child: Text(
          "INICIO",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
            color: Colors.white,
            fontFamily: "Source Sans Pro",
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
