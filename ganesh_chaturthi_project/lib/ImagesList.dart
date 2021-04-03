import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/material.dart';
import 'utils/SizeConfig.dart';
import 'ImageDetailPage.dart';

class ImagesList extends StatefulWidget {
  @override
  _ImagesListState createState() => _ImagesListState();
}

class _ImagesListState extends State<ImagesList> {
  static final facebookAppEvents = FacebookAppEvents();

  var data = [
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/1.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/2.png",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/3.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/4.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/5.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/6.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/7.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/8.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/9.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/10.png",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/11.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/12.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/13.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/14.png",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/15.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/16.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/17.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/18.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/19.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/20.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/21.png",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/22.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/23.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/24.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/25.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/26.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/27.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/28.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/29.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/30.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/31.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/32.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/33.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/34.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/35.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/36.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/37.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/38.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/39.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/40.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/41.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/42.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/43.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/44.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/45.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/46.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/47.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/48.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/49.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/50.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/51.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/52.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/53.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/54.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/55.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/56.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/57.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/58.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/59.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/60.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/61.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/62.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/63.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/64.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/65.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/66.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/67.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/68.jpg",
    "http://andiwiniosapps.in/ganesh_chaturthi_message/ganesh_chaturthi_images/69.jpg",
    
    
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Images",
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
                        print("Click on Image Grid item $index");
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    ImageDetailPage(data[index], index)));

                        facebookAppEvents.logEvent(
                          name: "Image List",
                          parameters: {
                            'clicked_on_jpeg_image_index': '$index',
                          },
                        );
                      });
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
