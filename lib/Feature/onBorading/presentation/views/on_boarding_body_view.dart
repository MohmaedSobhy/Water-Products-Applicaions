import 'package:flutter/material.dart';
import 'package:water_products/Feature/auth/presentation/screens/register_screen.dart';
import 'package:water_products/core/utils/app_assets.dart';
import 'package:water_products/core/utils/app_string.dart';
import '../../data/model/page_image_model.dart';
import '../widgets/custome_cirlce_button.dart';
import 'custome_indicator_view.dart';
import 'page_view_item.dart';

class OnBoardingBodyView extends StatefulWidget {
  const OnBoardingBodyView({super.key});

  @override
  State<OnBoardingBodyView> createState() => _OnBoardingBodyViewState();
}

class _OnBoardingBodyViewState extends State<OnBoardingBodyView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 20, start: 8, end: 8),
      child: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              children: [
                PageViewItem(
                  model: PageImageModel(
                    imagePath: AppImageAssets.waterDay,
                    message: AppString.welcomeTitle,
                    content: AppString.welcomeContent,
                  ),
                ),
                PageViewItem(
                  model: PageImageModel(
                    imagePath: AppImageAssets.waterBottel,
                    message: AppString.chooseAndOrderTitle,
                    content: AppString.chooseAndOrderContent,
                  ),
                ),
                PageViewItem(
                  model: PageImageModel(
                    imagePath: AppImageAssets.deliveryWater,
                    message: AppString.reliableServiceTitle,
                    content: AppString.reliableServiceContent,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              CustomeIndicatorView(selectedIndex: selectedIndex),
              Spacer(),
              CustomeCircleButton(
                onPressed: () {
                  if (pageController.page == 2) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RegisterScreen();
                        },
                      ),
                    );
                  } else {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
