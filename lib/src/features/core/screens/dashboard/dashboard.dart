import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/banner.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/searchbox.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/topcrops.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Variables
    final txtTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        appBar: DashboardAppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDashboardPadding),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(tDashboardTitle, style: txtTheme.bodyMedium),
              Text(tDashboardHeading, style: txtTheme.headlineMedium),

              const SizedBox(height: tDashboardPadding),

              //Search Box
              DashboardSearchBox(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding),

              //Categories
              DashboardCategories(txtTheme: txtTheme),
              const SizedBox(height: tDashboardCardPadding),

              //Banners
              DashboardBanner(txtTheme: txtTheme),

              const SizedBox(height: tDashboardCardPadding),

              //Top Crops
              Text(tDashboardTopCrops,
                  style: txtTheme.headlineSmall?.apply(fontSizeFactor: 1.0)),
              DashboardTopCrops(txtTheme: txtTheme)
            ]),
          ),
        ),
      ),
    );
  }
}
