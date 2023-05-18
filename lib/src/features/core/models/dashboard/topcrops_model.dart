import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';

class DashboardTopCropsModel {
  final String plantName; //Nombre de la planta
  final String topCropImg; //Imagen de la planta
  final VoidCallback? onPress;

  DashboardTopCropsModel(this.plantName, this.topCropImg, this.onPress);

  static List<DashboardTopCropsModel> list = [
    DashboardTopCropsModel("Cherry Tomatoe", tTopCropImage1, null),
    DashboardTopCropsModel("Asparagus", tTopCropImage2, null),
    DashboardTopCropsModel("Lettuce", tTopCropImage3, null),
    DashboardTopCropsModel("Champignon", tTopCropImage4, null),
  ];
}
