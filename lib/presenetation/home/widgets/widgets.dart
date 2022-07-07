import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netfliks_bloc/core/colors.dart';



class Top10Shows extends StatelessWidget {
  final int index;
  const Top10Shows({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              height: 150,
              width: 40,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kRadius,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.themoviedb.org/t/p/original/NhVsRaNhfXknIseUb2hY02gqom.jpg"),
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: BorderedText(
              strokeColor: white,
              strokeWidth: 2,
              child: Text(
                "${index +1}",
                style: TextStyle(color:Colors.black, fontSize: 130,),
              )),
        ),
      ],
    );
  }
}
