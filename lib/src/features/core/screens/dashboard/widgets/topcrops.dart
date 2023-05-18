import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/features/core/models/dashboard/topcrops_model.dart';

class DashboardTopCrops extends StatelessWidget {
  const DashboardTopCrops({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardTopCropsModel.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text(
                                  list[index].plantName, //Nombre de la planta
                                  style: txtTheme.bodyLarge,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis),
                            ),
                            Flexible(
                              child: Image(
                                  image: AssetImage(
                                      list[index].topCropImg), //Imagen planta
                                  height: 110),
                            ),
                          ]),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder()),
                            onPressed: () {},
                            child: const Icon(Icons.play_arrow),
                          ),
                          SizedBox(width: tDashboardCardPadding),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "3 Crops",
                                style: txtTheme.headlineSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "Categories",
                                style: txtTheme.bodySmall,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          )
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ),

        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Padding(
        //       padding: const EdgeInsets.only(right: 10),
        //       child: Container(
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: tCardBgColor),
        //         padding: const EdgeInsets.all(10),
        //         child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Row(
        //                   mainAxisAlignment:
        //                       MainAxisAlignment.spaceBetween,
        //                   crossAxisAlignment:
        //                       CrossAxisAlignment.start,
        //                   children: [
        //                     Flexible(
        //                       child: Text("Lettuce",
        //                           style: txtTheme.bodyLarge,
        //                           maxLines: 2,
        //                           overflow: TextOverflow.ellipsis),
        //                     ),
        //                     const Flexible(
        //                       child: Image(
        //                           image: AssetImage(tTopCropImage1),
        //                           height: 110),
        //                     ),
        //                   ]),
        //               Row(
        //                 children: [
        //                   ElevatedButton(
        //                     style: ElevatedButton.styleFrom(
        //                         shape: const CircleBorder()),
        //                     onPressed: () {},
        //                     child: const Icon(Icons.play_arrow),
        //                   ),
        //                   SizedBox(width: tDashboardCardPadding),
        //                   Column(
        //                     crossAxisAlignment:
        //                         CrossAxisAlignment.start,
        //                     children: [
        //                       Text(
        //                         "3 Crops",
        //                         style: txtTheme.headlineSmall,
        //                         overflow: TextOverflow.ellipsis,
        //                       ),
        //                       Text(
        //                         "Categories",
        //                         style: txtTheme.bodySmall,
        //                         overflow: TextOverflow.ellipsis,
        //                       )
        //                     ],
        //                   )
        //                 ],
        //               )
        //             ]),
        //       ),
        //     ),
        //   ),

        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Padding(
        //       padding: const EdgeInsets.only(right: 10),
        //       child: Container(
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: tCardBgColor),
        //         padding: const EdgeInsets.all(10),
        //         child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Row(
        //                   mainAxisAlignment:
        //                       MainAxisAlignment.spaceBetween,
        //                   crossAxisAlignment:
        //                       CrossAxisAlignment.start,
        //                   children: [
        //                     Flexible(
        //                       child: Text("Lettuce",
        //                           style: txtTheme.bodyLarge,
        //                           maxLines: 2,
        //                           overflow: TextOverflow.ellipsis),
        //                     ),
        //                     const Flexible(
        //                       child: Image(
        //                           image: AssetImage(tTopCropImage1),
        //                           height: 110),
        //                     ),
        //                   ]),
        //               Row(
        //                 children: [
        //                   ElevatedButton(
        //                     style: ElevatedButton.styleFrom(
        //                         shape: const CircleBorder()),
        //                     onPressed: () {},
        //                     child: const Icon(Icons.play_arrow),
        //                   ),
        //                   SizedBox(width: tDashboardCardPadding),
        //                   Column(
        //                     crossAxisAlignment:
        //                         CrossAxisAlignment.start,
        //                     children: [
        //                       Text(
        //                         "3 Crops",
        //                         style: txtTheme.headlineSmall,
        //                         overflow: TextOverflow.ellipsis,
        //                       ),
        //                       Text(
        //                         "Categories",
        //                         style: txtTheme.bodySmall,
        //                         overflow: TextOverflow.ellipsis,
        //                       )
        //                     ],
        //                   )
        //                 ],
        //               )
        //             ]),
        //       ),
        //     ),
        //   ),

        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Padding(
        //       padding: const EdgeInsets.only(right: 10),
        //       child: Container(
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: tCardBgColor),
        //         padding: const EdgeInsets.all(10),
        //         child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Row(
        //                   mainAxisAlignment:
        //                       MainAxisAlignment.spaceBetween,
        //                   crossAxisAlignment:
        //                       CrossAxisAlignment.start,
        //                   children: [
        //                     Flexible(
        //                       child: Text("Lettuce",
        //                           style: txtTheme.bodyLarge,
        //                           maxLines: 2,
        //                           overflow: TextOverflow.ellipsis),
        //                     ),
        //                     const Flexible(
        //                       child: Image(
        //                           image: AssetImage(tTopCropImage1),
        //                           height: 110),
        //                     ),
        //                   ]),
        //               Row(
        //                 children: [
        //                   ElevatedButton(
        //                     style: ElevatedButton.styleFrom(
        //                         shape: const CircleBorder()),
        //                     onPressed: () {},
        //                     child: const Icon(Icons.play_arrow),
        //                   ),
        //                   SizedBox(width: tDashboardCardPadding),
        //                   Column(
        //                     crossAxisAlignment:
        //                         CrossAxisAlignment.start,
        //                     children: [
        //                       Text(
        //                         "3 Crops",
        //                         style: txtTheme.headlineSmall,
        //                         overflow: TextOverflow.ellipsis,
        //                       ),
        //                       Text(
        //                         "Categories",
        //                         style: txtTheme.bodySmall,
        //                         overflow: TextOverflow.ellipsis,
        //                       )
        //                     ],
        //                   )
        //                 ],
        //               )
        //             ]),
        //       ),
        //     ),
        //   ),
      ),
    );
  }
}
