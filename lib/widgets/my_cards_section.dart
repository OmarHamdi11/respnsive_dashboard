import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/custom_background_container.dart';
import 'package:dashboard/widgets/dots_indecator_list.dart';
import 'package:dashboard/widgets/my_cards_page_view.dart';
import 'package:flutter/material.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 420,
            child: Text('My card', style: AppStyles.styleSemiBold20),
          ),
          const SizedBox(height: 20),
          MyCardsPageView(pageController: pageController),
          const SizedBox(height: 20),
          DotsIndecatorList(
            currentPageIndex: currentPageIndex,
          ),
        ],
      ),
    );
  }
}
