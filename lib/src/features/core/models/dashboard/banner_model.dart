import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';

class DashboardBannerModel {
  final String bannerImage1; // Imagen de la planta
  final String plantName1; //Nombre de la planta
  final String agePlant1;
  final String bannerImage2; // Imagen de la planta
  final String plantName2; //Nombre de la planta
  final String agePlant2; // Edad de la planta
  final VoidCallback? onPress;

  DashboardBannerModel(this.bannerImage1, this.plantName1, this.agePlant1,
      this.bannerImage2, this.plantName2, this.agePlant2, this.onPress);

  static List<DashboardBannerModel> list = [
    DashboardBannerModel(tBannerImage1, "Cherry Tomatoe", "2 months, 15 days",
        tBannerImage2, "Asparagus", "3 months, 22 days", null),
  ];
}
