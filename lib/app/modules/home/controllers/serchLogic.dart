import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:showman/app/modules/wishlist_page/views/widgets/favorite.dart';

class CustomSearchDelegate extends SearchDelegate {
  final searchcontroller = TextEditingController();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.close,
        size: 28.sp,
        color: Colors.black,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.length < 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Search term must be longer than two letters.",
            ),
          )
        ],
      );
    }

    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Center(child: CircularProgressIndicator()),
          ],
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Container()],
        )
      ],
    );
  }
}
