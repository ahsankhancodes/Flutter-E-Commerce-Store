import 'package:flutter/material.dart';
import 'package:fyp_store/utils/constants/colors.dart';

class MySettingMenuTile extends StatelessWidget {
  const MySettingMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.trailing,
  });

  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: MyColors.primary),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
    );
  }
}
