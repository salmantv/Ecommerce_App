import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:showman/app/modules/wishlist_page/views/wishlist_page_view.dart';

List<Widget> Appbaricons = [
  IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.search,
      color: Colors.black,
    ),
  ),
  IconButton(
    onPressed: () => Get.to(WishlistPageView()),
    icon: Icon(
      Icons.favorite_border_rounded,
      color: Colors.black,
    ),
  ),
  IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.shopping_bag_outlined,
      color: Colors.black,
    ),
  ),
];
