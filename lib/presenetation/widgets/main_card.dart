import 'package:flutter/material.dart';
import 'package:netfliks_bloc/core/colors.dart';


class HommeCard extends StatelessWidget {
  const HommeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius:kRadius,
        image: DecorationImage(
          image: NetworkImage(
              "https://www.themoviedb.org/t/p/w220_and_h330_face/wFjboE0aFZNbVOF05fzrka9Fqyx.jpg"),
              
        ),
      ),
    );
  }
}
