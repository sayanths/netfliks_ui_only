import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netfliks_bloc/core/colors.dart';
import 'package:netfliks_bloc/core/constants.dart';
import 'package:netfliks_bloc/presenetation/search/widgets/title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/k22mrpAzZNRR5ktD5Wb7rMlxemS.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitleText(title: "Top Searches",),
        kHeight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => TopSearchItemTile(),
            separatorBuilder: (ctx, index) => kHeight,
            itemCount: 10,
          ),
        ),
      ],
    ));
  }
}



class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.4,
          height: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.cover)),
        ),
        Expanded(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Movie name",
              style: TextStyle(
              color: white, fontSize: 16, fontWeight: FontWeight.bold,),
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: white,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 23,
            child: Icon(CupertinoIcons.play_fill,color: white  ,),
          ),
        )
      ],
    );
  }
}
