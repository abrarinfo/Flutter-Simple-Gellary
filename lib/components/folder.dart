import 'package:flutter/material.dart';
import 'package:flutter_gellary/components/file_one.dart';
import 'package:get/get.dart';

class Folder extends StatelessWidget {
  Folder({Key? key}) : super(key: key);

  List<String> folderName = [
    'All Photos',
    'Camera',
    'Favorite',
    'Bluetooth',
    'Downloads',
    'Shared',
    'SnapChat',
    'ScreenShots',
    'Facebook',
    'WhatsApp',
  ];

  List<String> coverImageLinks = [
    'https://media.istockphoto.com/photos/unique-faces-collage-picture-id1291584234?b=1&k=20&m=1291584234&s=170667a&w=0&h=ilxJUdfUg0NdqthzfPgAPZFCDIxq5dW6JCRhjIhZOAI=',
    'https://www.oberlo.com/media/1603970279-pexels-photo-3.jpg?fit=max&fm=jpg&w=1824',
    'https://www.reshot.com/static/home-pages/slider/photos_hero_02.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-jafaH7At1qgj8nhAhW3_XAhaQDphVhis3A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzeYZF32oJK_Y2SfYZHf08H6Y_RGqvsXhC7Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ66gziccnFsOF8DVIh99EnJUT8PYXApFe-gg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeLqhEhG4kdNwkzk9QbvaHsnloVaWj7kY8ww&usqp=CAU',
    'https://farm6.staticflickr.com/5066/5893395540_af1965d474_o.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4Wb-7EToIARk9bmqIWvbjno1tMC-V0ZIBiw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwclY3q-sh2CLuA47kocKqEBdOYikeqP1iEA&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(50),
          child: Wrap(
            spacing: 40,
            runSpacing: 40,
            children: [
              for (var i = 0; i < folderName.length; i++)
                InkWell(
                  child: Container(
                    width: 250,
                    height: 250,
                    child: Center(
                      child: Text(
                        folderName[i],
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 10.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                          coverImageLinks[i],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  onTap: () => Get.to(
                    FileOne(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
