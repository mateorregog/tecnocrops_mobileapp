import 'package:flutter/material.dart';

class DashboardCategoriesModel {
  final String title; //Planta abreviada
  final String heading; //Nombre de la planta
  final String subHeading; // Edad de la planta
  final VoidCallback? onPress;

  DashboardCategoriesModel(
      this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardCategoriesModel> list = [
    DashboardCategoriesModel("SP", "Spinach", "1 month, 3 days", null),
    DashboardCategoriesModel("CT", "Cherry Tomatoe", "2 months, 15 days", null),
    DashboardCategoriesModel("AS", "Asparagus", "3 months, 22 days", null),
    DashboardCategoriesModel("LT", "Lettuce", "1 month, 18 days", null),
    DashboardCategoriesModel("CH", "Champignon", "2 months, 8 days", null)
  ];
}
