import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/resources.dart';
import 'app_design.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
      this.title
  });

  @override
  Size get preferredSize => Size.fromHeight(80.h);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ColorManager.blackColor,
      toolbarHeight: 90.h,
      title:   AppDesign(appBarTitle: title??"Quiz Master"),
    );
  }
}
