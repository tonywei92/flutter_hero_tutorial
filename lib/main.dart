import 'package:flutter/material.dart';
import './user_model.dart';
import './user.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  final List<UserModel> _userlist = [
    UserModel(1, "Anthony",
        "https://cdn.idntimes.com/content-images/post/20180703/0848c3708f8518f917e8747d6e745034.jpg"),
    UserModel(2, "Lea Agustine",
        "https://media.glamour.com/photos/5696d70301ed531c6f00b97d/master/w_1280,c_limit/sex-love-life-2015-05-woman-1-main.jpg"),
    UserModel(3, "Mickey",
        "https://lumiere-a.akamaihd.net/v1/images/file_493bd199.jpeg?width=1200&region=0%2C0%2C2000%2C2000&quality=8"),
    UserModel(4, "Donald Newman",
        "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTQwMTAwNTM2NjUyMjc3MjY2/donald-sutherland-gettyimages-495892778_1600jpg.jpg"),
    UserModel(5, "Pedro Andrado",
        "http://pluspng.com/img-png/man-png-man-png-pic-594.png"),
    UserModel(6, "Tony Stark",
        "https://www.hindustantimes.com/rf/image_size_960x540/HT/p2/2018/04/03/Pictures/_56db43e2-3722-11e8-8aa5-05fdb8d0ae52.jpg"),
    UserModel(7, "Diana Levato",
        "https://alexparkinson34.files.wordpress.com/2012/05/women-hair-styles_2560x1600_83909.jpg"),
    UserModel(8, "Lively Claudia",
        "https://cdn.shopify.com/s/files/1/1001/9644/files/WhatsNewWomen_700x.jpg?v=1536608955"),
    UserModel(9, "Solid Snake",
        "https://vignette.wikia.nocookie.net/metalgear/images/b/be/MGS2SnakePP.png/revision/latest/scale-to-width-down/350?cb=20130626062457"),
    UserModel(10, "Superman",
        "https://pmcvariety.files.wordpress.com/2013/06/manofsteel_close.jpg?w=700&h=393&crop=1")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hero Animation Demo'),
        ),
        body: ListView(
          children: _userlist.map((user) => User(user)).toList(),
        ),
      ),
    );
  }
}
