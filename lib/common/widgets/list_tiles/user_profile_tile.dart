import 'package:flutter/material.dart';
import 'package:fyp_store/common/widgets/images/my_circular_image.dart';
import 'package:fyp_store/utils/constants/colors.dart';
import 'package:fyp_store/utils/constants/image_strings.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MyUserProfileTile extends StatelessWidget {
  const MyUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const MyCircularImage(
        image: MyImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Ahsan Khan', style: Theme.of(context).textTheme.headlineSmall!.apply(color: MyColors.white)),
      subtitle: Text('ahsankhancodes@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: MyColors.white)),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: MyColors.white,),),
    );
  }
}
