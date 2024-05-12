import 'package:flutter/material.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/device/device_utility.dart';
import 'package:fyp_store/utils/helpers/helper_functions.dart';

class MyTabBar extends StatelessWidget implements PreferredSizeWidget{
  const MyTabBar({
    super.key, required this.tabs,
  });
  
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    @override
    final dark = MyHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? MyColors.black : MyColors.white,
      child: TabBar(
        tabs: tabs,
          isScrollable: true,
          indicatorColor: MyColors.primary,
          unselectedLabelColor: MyColors.darkGrey,
          labelColor: dark ? MyColors.white : MyColors.primary,
          ),
    );
    
    
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MyDeviceUtils.getAppBarHeight());
  
}
