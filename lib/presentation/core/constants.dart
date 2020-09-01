import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const iconSizeAppBar = 26.0;

const iconSize1AppBar = 22.0;

const dividerAppbar = Divider(
  height: 0.1,
  endIndent: 9.0,
);

final grey = Colors.grey[400];

const nameStyle = TextStyle(
    fontFamily: 'Roboto', fontSize: 13.0, fontWeight: FontWeight.w800);

const nameStyle2 = TextStyle(
    fontFamily: 'Roboto', fontSize: 15.0, fontWeight: FontWeight.w800);

const bodyStyle = TextStyle(fontFamily: 'Roboto', fontSize: 12.0);

const body1Style = TextStyle(fontSize: 14, fontWeight: FontWeight.w300);

const body2Style = TextStyle(fontSize: 11.5, fontWeight: FontWeight.w300);

const body3Style = TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold);

final boxShadowAppBar = BoxDecoration(boxShadow: [
  BoxShadow(
    color: Color.fromRGBO(227, 227, 227, 1.0),
    offset: Offset(0, 2.0),
    blurRadius: 4.0,
  )
]);

final verification = Container(
    width: 12,
    height: 12,
    padding: const EdgeInsets.only(bottom: 2.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Color.fromRGBO(17, 129, 195, 1.0)),
    child: Icon(
      Icons.check,
      color: Colors.white,
      size: 9.5,
    ));

final likeUnderPost = Container(
    width: 77.0,
    height: 77.0,
    child: SvgPicture.asset('assets/me-gusta.svg', color: Colors.white));

final paddingPosts = EdgeInsets.fromLTRB(16.0, 17.0, 5.0, 8.0);

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color.fromRGBO(255, 255, 255, 0.1),
  borderRadius: BorderRadius.circular(10.0),
);

// Constantes de Andrés
const screen = {
  "app_name": "dinbog",
  "marginLat": 16.0,
  "marginTop": 8.0,
  "edgeInsetsMarginsAll":
      EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
  "edgeInsetsMarginsLatOnly": EdgeInsets.only(left: 16.0, right: 16.0),
  "comment_limits": 2200
};

const String images_folder = "assets/images/";
const image = {
  "photo_camera": images_folder + "photo_camera.png",
  "create_post": images_folder + "create_post.png",
  "like_on": images_folder + "like_on.png",
  "like_off": images_folder + "like_off.png",
  "comment": images_folder + "comment.png",
  "share": images_folder + "share.png",
  "multi_post": images_folder + "multi_file.png",
  "multi_post_background": images_folder + "multi_file_background.png",
};

const databaseConstants = {
  "token": "TOKEN",
  "logged": "Logged",
};

const repositoryHeader = {
  'Content-Type': 'application/json',
};

const repositoryHeaderToAdd = {
  "bearerToken": "Bearer ",
  "headerAuthorization": "Authorization",
};

const int repositoryResultErrorUnauthorized = 401;
const int repositoryResultErrorServerNotFound = 404;
const int repositoryResultErrorServer = 500;
const int repositoryResultErrorTimeoutCode = 600;
const int repositoryResultErrorInternetCode = 601;
const repositoryGeneral = {
  "operationPost": 0,
  "operationPut": 1,
  "operationDelete": 2,
  "requestDuration": Duration(minutes: 2),
  "resultSuccess": 200,
  "resultSuccess201": 201,
};

const int typeMultimediaGallery = 0;
const rrss = {
  "Facebook": "Facebook",
  "Twitter": "Twitter",
  "Tumblr": "Tumblr",
};
