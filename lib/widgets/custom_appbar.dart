import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../core/constant/colors.dart';
import '../core/constant/svg_assets.dart';
import '../core/constant/text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBackShown;
  final String title;
  final Function()? onBackPressed;
  final List<Widget>? actions;
  final Function()? onDrawerPress;
  final isDrawerIconShown;
  const CustomAppBar(
      {this.isBackShown = false,
        required this.title,
        this.onBackPressed,
        this.actions,
        this.onDrawerPress,
        this.isDrawerIconShown = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: isBackShown
          ? InkWell(
        onTap: onBackPressed,
        child: Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.backColor,
        ),
      )
          : Container(),
      title: Text(title, style: appBarStyle),
      actions: [
        isDrawerIconShown
            ? IconButton(
          onPressed: onDrawerPress,
          icon: SvgPicture.asset(
            SvgAssets.drawer,
            height: 2.h,
            fit: BoxFit.fill,
          ),
          color: Colors.black,
          // tooltip: 'Drawer',
        )
            : Container()
      ],
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}