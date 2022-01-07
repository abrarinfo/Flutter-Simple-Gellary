import 'package:flutter/material.dart';

class FileOne extends StatelessWidget {
  FileOne({Key? key}) : super(key: key);

  List<String> imageLinks = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4Wb-7EToIARk9bmqIWvbjno1tMC-V0ZIBiw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ66gziccnFsOF8DVIh99EnJUT8PYXApFe-gg&usqp=CAU',
    'https://xoxobella.com/wp-content/uploads/2020/08/instagram_captions_for_nature_photos-1.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3QFIumFYWQXDbwJ-A_5h_i2KpuiRjAOkURg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWKhGPeUU-iNE5AwCyqGKjdfOQdgyJqokrPQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwclY3q-sh2CLuA47kocKqEBdOYikeqP1iEA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK04XEn-fVgRAhUvQ6azT62_kXW1emhBHVuw&usqp=CAU',
    'https://farm6.staticflickr.com/5066/5893395540_af1965d474_o.jpg',
    'https://images.squarespace-cdn.com/content/v1/5d4c6077a7991a0001837faa/1594306925872-RQME9AO7XM0OQKT5QIHN/summer+family+photos+Fishers%2C+Indiana',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.all(50),
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            for (var i = 0; i < imageLinks.length; i++)
              InkWell(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                        imageLinks[i],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                onTap: () => {},
              ),
          ],
        ),
      ),
    );
  }
}
