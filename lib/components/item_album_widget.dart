import 'package:flutter/material.dart';

import '../models/albumb_model.dart';

class ItemAlbumbWidget extends StatelessWidget {
  final AlbumModel model;
  const ItemAlbumbWidget({super.key, required this.model});
  // const ItemAlbumbWidget(
  //     {super.key,
  //     required this.title,
  //     required this.describe,
  //     required this.imageUrl,
  //     required this.id});

  // final String imageUrl, title, describe;
  // final int id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => DetailAlbumbScreen(data: id),
        //   ),
        // );
      },
      child: Stack(
        children: [
          Container(
            width: 240.0,
            height: 300.0,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(255, 165, 0, 0.5),
                  offset: Offset(1, 10),
                  blurRadius: 25,
                  spreadRadius: 1,
                )
              ],
              color: Theme.of(context).bottomAppBarColor,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(model.imageUrl),
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: const EdgeInsets.only(right: 30.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(114, 237, 241, 241),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              height: 60.0,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20.0, right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      model.title,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      model.describe,
                      style: TextStyle(fontSize: 10.0),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
