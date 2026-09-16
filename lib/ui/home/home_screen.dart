import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/hadeth/hadeth_tab.dart';
import 'package:islami_app/ui/home/tabs/quran/quran_tab.dart';
import 'package:islami_app/ui/home/tabs/radio/radio_tab.dart';
import 'package:islami_app/ui/home/tabs/sebha/sebha_tab.dart';
import 'package:islami_app/ui/home/tabs/time/time_tab.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedItem = 0;
  List <Widget> tabsList = [
    QuranTab(), HadethTab(), SebhaTab(), RadioTab(), TimeTab()
  ];
  List <String> backgroundImages = [
    AppAssets.quranBg, AppAssets.hadethBg, AppAssets.sebhaBg
    , AppAssets.radioBg, AppAssets.timeBg
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          backgroundImages[selectedItem],
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: AppColors.goldColor),
            child: BottomNavigationBar(
              currentIndex: selectedItem,
              onTap: (index) {
                selectedItem = index;
                setState(() {});
              },

              // type: BottomNavigationBarType.fixed,
              // backgroundColor: AppColors.goldColor,
              items: [

                buildBottomNavBar(
                    label: 'Quran',
                    index: 0,
                    iconName: AppAssets.iconQuran
                ),
                buildBottomNavBar(
                    label: 'Hadeth',
                    index: 1,
                    iconName: AppAssets.iconHadeth
                ),
                buildBottomNavBar(
                    label: 'Sebha',
                    index: 2,
                    iconName: AppAssets.iconSebha
                ),
                buildBottomNavBar(
                    label: 'Radio',
                    index: 3,
                    iconName: AppAssets.iconRadio
                ),
                buildBottomNavBar(
                    label: 'Time',
                    index: 4,
                    iconName: AppAssets.iconTime
                ),

              ],
            ),
          ),
          body: SafeArea(
            child: Column(
              children: [
                Image.asset(AppAssets.islamiAppBar),
                Expanded(child: tabsList[selectedItem])
              ],
            ),
          ),

        ),
      ],
    );
  }

  Widget buildContainerForIcon({
    required String imagePath,
    required int index,
  }) {
    return selectedItem == index
        ? Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(66),
        color: AppColors.lightBlackColor,
      ),
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      child: ImageIcon(AssetImage(imagePath)),
    )
        : ImageIcon(AssetImage(imagePath));
  }

  BottomNavigationBarItem buildBottomNavBar({
    required String label,
    required int index,
    required String iconName

  }) {
    return BottomNavigationBarItem(
      icon: buildContainerForIcon(
          imagePath: iconName,
          index: index
      ),
      label: label,
    );
  }
}
