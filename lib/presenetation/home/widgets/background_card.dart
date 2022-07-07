import 'package:flutter/material.dart';
import 'package:netfliks_bloc/presenetation/home/home_screen.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://pbs.twimg.com/media/FFIdXlMXEAs5iGd.jpg:large"),
                  fit: BoxFit.fill)),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {},
                  child: CustomButton(title: "List", icon: Icons.add)),
              PlayButton(),
              InkWell(
                  onTap: () {},
                  child: CustomButton(title: "Info", icon: Icons.info)),
            ],
          ),
        ),
      ],
    );
  }
}
