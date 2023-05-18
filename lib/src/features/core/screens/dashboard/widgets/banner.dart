import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/core/models/dashboard/banner_model.dart';

class DashboardBanner extends StatelessWidget {
  const DashboardBanner({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardBannerModel.list;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: tCardBgColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: Image(image: AssetImage(tBookmarkIcon))),
                    Flexible(
                        child: Image(
                            image: AssetImage(list[0]
                                .bannerImage1))), //pasar una imagen declarada en assets. img1
                  ],
                ),
                const SizedBox(height: 25),
                Text(list[0].plantName1, //nombre planta 1
                    style: txtTheme.headlineMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
                Text(list[0].agePlant1, //edad planta 1
                    style: txtTheme.bodyMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ),
        const SizedBox(width: tDashboardCardPadding),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Image(image: AssetImage(tBookmarkIcon))),
                        Flexible(
                            child: Image(
                                image: AssetImage(list[0]
                                    .bannerImage2))), //Imagen de planta 2
                      ],
                    ),
                    const SizedBox(height: 25),
                    Text(list[0].plantName2, //Nombre de planta 2
                        style: txtTheme.headlineMedium,
                        overflow: TextOverflow.ellipsis),
                    Text(list[0].agePlant2, //Edad de planta 2
                        style: txtTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {}, child: const Text(tDashboardButton)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
