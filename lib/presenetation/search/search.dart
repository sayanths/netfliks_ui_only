import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:netfliks_bloc/core/colors.dart';
import 'package:netfliks_bloc/core/constants.dart';
import 'package:netfliks_bloc/presenetation/search/search_result_page.dart';
import 'package:netfliks_bloc/presenetation/search/widgets/search_idel.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CupertinoSearchTextField(
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            suffixIcon: Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
            style: TextStyle(color: white),
          ),
          kHeight,
          Expanded(
            child: SearchResultPage(),
          ),
        ],
      ),
    );
  }
}
