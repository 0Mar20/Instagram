import 'package:flutter/material.dart';


class ImagesSavedScreen extends StatefulWidget {
  @override
  _ImagesSavedScreenState createState() => _ImagesSavedScreenState();
}

class _ImagesSavedScreenState extends State<ImagesSavedScreen> {
  Widget _images({String url}){
    return Container(
      height: 110,
      width: 110,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(url) , fit: BoxFit.cover)
      ),
    );
  }

  List _imagesurl = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Football_iu_1996.jpg/1200px-Football_iu_1996.jpg",
    "https://i2-prod.mylondon.news/incoming/article17911124.ece/ALTERNATES/s1200d/0_footballfan.jpg",
    "https://img.fifa.com/image/upload/t_tc1/v1602447188/xrcygtjmengtexn5oxxt.jpg",
    "https://img.fifa.com/image/upload/t_s3/v1602233139/huhljumx5zqywoyfhgym.jpg",
    "https://vignette.wikia.nocookie.net/the-office-us/images/3/34/Image.png/revision/latest?cb=20170829004901",
    "https://i0.wp.com/www.dailycal.org/assets/uploads/2019/03/michael_nbc_courtesy-copy-900x580.jpg",
    "https://m.media-amazon.com/images/M/MV5BMjMyOTM2OTk1Ml5BMl5BanBnXkFtZTgwMTI3MzkyNjM@._V1_UY1200_CR86,0,630,1200_AL_.jpg",
    "https://media1.popsugar-assets.com/files/thumbor/-H95-cQdwWZcEx2hMBhp3crvMCE/66x304:2000x2238/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2019/12/11/092/n/1922398/3bc9a6e15df19424c50347.66856259_/i/Steve-Carell.jpg",
    "https://www.nawa3em.com/big/celebs10-22-2-2014.jpg",
    "https://arabic.sport360.com/wp-content/uploads/2020/08/%D9%83%D8%B1%D9%8A%D8%B3%D8%AA%D9%8A%D8%A7%D9%86%D9%88-%D8%B1%D9%88%D9%86%D8%A7%D9%84%D8%AF%D9%88-1.jpg",
    "https://cdn.al-ain.com/images/2020/1/23/99-143500-cristiano-ronaldo-mustache_700x400.jpeg",
    "https://mediaaws.almasryalyoum.com/news/large/2020/07/14/1266725_0.jpg",
    "https://www.shorouknews.com/uploadedimages/Sections/Sports/original/messi-bayern-2020.jpg",
    "https://aawsat.com/sites/default/files/styles/article_img_top/public/2020/09/05/AFP_1WZ8JU.jpg?itok=bu2A5Xvf",
    "https://images.akhbarelyom.com/images/images/large/2016/02/23/mn5752c548445811456285680.jpg",

    "https://www.encorepub.com/wp-content/uploads/2017/11/Thor.png",
    "https://i.pinimg.com/736x/b4/a4/b4/b4a4b45efbef5545ec399f2d6f6a24ae.jpg",
    "https://i.pinimg.com/736x/54/de/3a/54de3aa77fe59248a21e0311683cf464.jpg",
    "https://www.watania.net/storage/698x433/uploads/archive/2015/08/%D9%86%D9%88%D8%B1-%D8%A7%D9%84%D8%B4%D8%B1%D9%8A%D9%81.jpg",
    "https://img.youm7.com/images/NewsPics/gallery/pics/4201528175883.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/4/43/Suad_Husni_1979.jpg",
    "https://ar.harpersbazaararabia.com/public/styles/ful_scr_img/public/images/2020/08/12/117236590_169427364635555_2452214907185687931_n_1.jpg?itok=RLohb2SC",
    "https://media.filgoal.com/news/verylarge/187129_0.jpg",
    "https://mediaaws.almasryalyoum.com/news/large/2020/08/13/1281853_0.jpg",
    "https://mubasher-pulse.s3.amazonaws.com/21893/1582986740-b7aab0f2-c1ae-4c72-b935-86b9b0f88d6f.jpg",
    "https://morb3.com/wp-content/uploads/2020/01/60-%D8%B5%D9%88%D8%B1-%D9%85%D8%AD%D9%85%D8%AF-%D8%B5%D9%84%D8%A7%D8%AD-%D9%88%D8%A7%D9%94%D9%81%D8%B6%D9%84-%D8%AE%D9%84%D9%81%D9%8A%D8%A7%D8%AA-%D9%84%D9%85%D8%AD%D9%85%D8%AF-%D8%B5%D9%84%D8%A7%D8%AD-%D8%AC%D9%88%D8%AF%D8%A9-%D8%B9%D8%A7%D9%84%D9%8A%D8%A9-Mohamed-Salah-Wallpapers-HD-2020--576x1024.jpg",
    "https://arabia.eurosport.com/uploads//article/default_article/f34/98195b491c3a32c2acb61aeb396102f4.jpeg",
    "https://img.superkora.football/large/20190729105408548.jpg",
    "https://i.pinimg.com/736x/4f/8a/8f/4f8a8f72b4e5c982f4a5372e0266ccde.jpg",
    "https://static.arageek.com/wp-content/uploads/2017/09/Ahmed-Khaled-Tawfik-1.jpg",

    "https://arabi21.com/Content/Upload/large/22016298323414646.jpg",
    "https://wallpapercave.com/wp/wp2616097.jpg",
    "https://pbs.twimg.com/profile_images/1003643864907993088/eF0VVprg_400x400.jpg",
    "https://2.bp.blogspot.com/-ItdUxuZTEMA/VRCDjYoCDuI/AAAAAAAAAR4/wU9hniDdxHY/s1600/ironman01.jpeg",
    "https://www.churchpop.com/wp-content/uploads/2017/11/thor-hammer-700x438.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          Expanded(
            child: GridView.builder(
                itemCount: 30,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 3,
                    childAspectRatio: 1),
                itemBuilder: (context, index) {
                  return _images(url: _imagesurl[index]);
                }),
          ),





        ],
      ),
    );
  }
}
