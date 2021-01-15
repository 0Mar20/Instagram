import 'package:flutter/material.dart';


class VideosSavedScreen extends StatefulWidget {
  @override
  _VideosSavedScreenState createState() => _VideosSavedScreenState();
}

class _VideosSavedScreenState extends State<VideosSavedScreen> {
  Widget _images({String url, String title , String view}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 200,
        width: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
            DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
        child: Container(
          height: 200,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 5, top: 190),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Text(
                  view,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List _imagesurl = [
    "https://backyardadvisor.com/wp-content/uploads/2019/07/Birthday-Party.jpeg",
    "https://i2-prod.mylondon.news/incoming/article17911124.ece/ALTERNATES/s1200d/0_footballfan.jpg",
    "https://i.pinimg.com/originals/cb/3d/80/cb3d803f9d793aec42c22d10df055f74.jpg",
    "https://thetvtraveler.com/wp-content/uploads/2019/03/endgame.jpg",
    "https://yt3.ggpht.com/a/AATXAJydi4q2mjd8aLVDvGx-XSXFelYEnFLecRp0yYDzDQ=s900-c-k-c0xffffffff-no-rj-mo",
    "https://cdn.britannica.com/06/187506-050-C3F655BB/Edith-Piaf.jpg",
    "https://www.morningstar.co.uk/static/UploadManager/Assets/top%2010%20wide%20article.jpg",
    "https://i.pinimg.com/originals/9d/a8/f3/9da8f3e8906aee96206f007d22983e78.jpg",
    "https://s3-eu-west-1.amazonaws.com/static.jbcgroup.com/amd/pictures/092a715eb29c3f36db6d86ba6a581fd0.jpg",
  ];

  List _title = [
    "Happy Birthday..",
    "10 good goals",
    "All Credits @resepies",
    "Good films from marvel",
    "10 tips from 5 min crafts",
    "Lovely Song in Winter",
    "Top 10 funny pranks",
    "Winter Style 2020",
    "لقطات العيال كبرت",
  ];

  List _views = [
    "20K views",
    "755K views",
    "1M views",
    "1.2M views",
    "5M views",
    "622K views",
    "877K views",
    "755K views",
    "622K views",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 6,
                    childAspectRatio: 0.7),
                itemBuilder: (context, index) {
                  return _images(url: _imagesurl[index], title: _title[index] , view: _views[index]);
                }),
          ),
        ],
      ),
    );
  }
}
