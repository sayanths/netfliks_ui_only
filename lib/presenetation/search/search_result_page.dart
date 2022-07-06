import 'package:flutter/material.dart';
import 'package:netfliks_bloc/core/constants.dart';
import 'package:netfliks_bloc/presenetation/search/widgets/title.dart';

const imageUrl =
    "http://image.tmdb.org/t/p/w500/9Rj8l6gElLpRL7Kj17iZhrT5Zuw.jpg";

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitleText(title: "Movies & TV"),
        kHeight,
        Expanded(
          child: GridView.count(
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            shrinkWrap: true,
            crossAxisCount: 3,
            childAspectRatio: 1/1.4,
            children: List.generate(20, (index) {
              return MainCard();
            }),
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
