import 'package:cached_network_image/cached_network_image.dart';
import 'package:dinbog/presentation/wall/core/components/verification_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class IndividualPost extends StatefulWidget {
  @override
  _IndividualPostState createState() => _IndividualPostState();
}

class _IndividualPostState extends State<IndividualPost> {
  Size _screenSize;

  TransformationController _transformationController;

  @override
  Widget build(BuildContext context) {
    _transformationController = TransformationController();

    _screenSize = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _postHeader(),
        ),
        _postMultimedia(),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 4),
          child: _postInteraction(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 4),
          child: _commentMultimedia(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 4),
          child: Text("View all 51 comments"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 4),
          child: _lastFollowerComment(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 4),
          child: Text("Agost 20, 2020"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Divider(
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ],
    );
  }

  Widget _postHeader() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              // Foto y navegacion al perfil
              "Talent" == 'Talent'
                  ? CachedNetworkImage(
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              CircularProgressIndicator(
                                  value: downloadProgress.progress),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                      imageBuilder: (context, imageProvider) => Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: imageProvider, fit: BoxFit.fill),
                            ),
                          ),
                      imageUrl:
                          "https://images-na.ssl-images-amazon.com/images/I/81w6jjXIzJL._AC_SL1500_.jpg")
                  : Container(
                      height: 50.0,
                      width: 50.0,
                      child: CachedNetworkImage(
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          imageUrl:
                              "https://images-na.ssl-images-amazon.com/images/I/81w6jjXIzJL._AC_SL1500_.jpg"),
                    ),

              SizedBox(
                width: 8,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Iron Man"),
                      SizedBox(
                        width: 4,
                      ),
                      VerificationIcon()
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("The greatest"),
                  SizedBox(
                    height: 2,
                  ),
                  Text("1h ago"),
                ],
              ),
            ],
          ),

          // Boton More vertical despliega model para reportar un Post
          IconButton(
              icon: Icon(
                Icons.more_vert,
                size: 18,
              ),
              onPressed: () {})
        ]);
  }

  Widget _postMultimedia() {
    return GestureDetector(
      child: Container(
          width: _screenSize.width,
          height: _screenSize.height * 0.35,
          child: InteractiveViewer(
            panEnabled: false,
            onInteractionEnd: (details) {
              setState(() {
                _transformationController.toScene(Offset.zero);
              });
            },
            transformationController: _transformationController,
            minScale: 1,
            maxScale: 1000,
            child: CachedNetworkImage(
              placeholder: (context, url) => CircularProgressIndicator(),
              imageUrl:
                  "https://www.sideshow.com/storage/product-images/500950U/tony-stark-iron-man_marvel_feature.jpg",
              fit: BoxFit.contain,
            ),
          )),
      onDoubleTap: () {},
    );
  }

  Widget _postInteraction() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          child: Icon(
            AntDesign.like1,
            color: Theme.of(context).iconTheme.color,
          ),
          onTap: () {},
        ),
        SizedBox(
          width: 8,
        ),
        Text("3"),
        SizedBox(
          width: 28,
        ),
        GestureDetector(
          child: Icon(
            MaterialCommunityIcons.comment_text_outline,
            color: Theme.of(context).iconTheme.color,
          ),
          onTap: () {},
        ),
        SizedBox(
          width: 8,
        ),
        Text("52"),
        SizedBox(
          width: 28,
        ),
        GestureDetector(
          child: Icon(
            FontAwesome.share,
            color: Theme.of(context).iconTheme.color,
          ),
          onTap: () {},
        ),
      ],
    );
  }

  Widget _commentMultimedia() {
    return Row(
      children: [
        Text("Iron Man:"),
        SizedBox(
          width: 8,
        ),
        Text("In the space")
      ],
    );
  }

  Widget _lastFollowerComment() {
    return Row(
      children: [
        Text("Dr. Strange:"),
        SizedBox(
          width: 8,
        ),
        Text("Idiot...")
      ],
    );
  }
}
