import 'package:celebritysgapp/widget/brand_colors.dart';
import 'package:celebritysgapp/widget/custom_TextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

setAppBar() {
  // ignore: unnecessary_new
  return new AppBar(
    backgroundColor: secondaryColor,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Get.to(HomePage()),
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: AssetImage('images/logo.jpg'),
        ),
      ),
    ),
    title: CustomTextField(
      hintText: "Search",
      suffixIcon: Icon(
        Icons.search,
        color: Colors.white,
      ),
    ),
    actions: [
      IconWidget(),
    ],
  );
}
