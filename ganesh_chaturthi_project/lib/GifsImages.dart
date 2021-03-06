import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/material.dart';
import 'utils/SizeConfig.dart';
import 'GifDetailPage.dart';

class GifsImages extends StatefulWidget {
  @override
  _GifsImagesState createState() => _GifsImagesState();
}

class _GifsImagesState extends State<GifsImages> {
  static final facebookAppEvents = FacebookAppEvents();
//http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/1.gif
  var data = [
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/1.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/2.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/3.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/4.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/5.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/6.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/7.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/8.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/9.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/10.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/11.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/12.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/13.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/14.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/15.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/16.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/17.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/18.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/19.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/20.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/21.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/31.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/22.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/32.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/23.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/33.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/24.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/34.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/25.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/35.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/26.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/36.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/27.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/37.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/28.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/38.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/29.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/39.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/30.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/40.gif",

    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/41.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/42.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/43.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/44.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/45.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/46.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/47.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/48.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/49.gif",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_gifs/50.gif"
    


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gif Images",
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      body: SafeArea(
        child: data != null
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Padding(
                      //8.0
                      padding:
                          EdgeInsets.all(1.93 * SizeConfig.widthMultiplier),

                      child: ListTile(
                        title: CachedNetworkImage(
                          imageUrl: data[index],
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          fadeOutDuration: const Duration(seconds: 1),
                          fadeInDuration: const Duration(seconds: 3),
                        ),
                      ),
                    ),
                    onTap: () {
                      print("Click on Gif Grid item $index");
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  GifDetailPage(data[index], index)));

                      facebookAppEvents.logEvent(
                        name: "GIF List",
                        parameters: {
                          'clicked_on_gif_image_index': '$index',
                        },
                      );
                    },
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
