import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/material.dart';

import 'StatusDetailPage.dart';
import 'utils/SizeConfig.dart';

class StatusList extends StatefulWidget {
  @override
  _StatusListState createState() => _StatusListState();
}

class _StatusListState extends State<StatusList> {
  static final facebookAppEvents = FacebookAppEvents();
  var data = [
    // Status
    "भगवान श्री गणेश की कृपा, बनी रहे आप हर दम। हर कार्य में सफलता मिले, जीवन में न आये कोई गम। गणेश चतुर्थी की शुभकामनाएं।",

    "रूप बड़ा निराला, गणपति मेरा बड़ा प्यार। जब कभी भी कोई आई मुसीबत, मेरे बप्पा ने पल में हाल कर डाला। हैप्पी गणेश चतुर्थी।",

    "चलो खुशियो का जाम हो जाए, लेके बप्पा का नाम कुछ अच्छा काम हो जाए। खुशिया बाँट के हर जगह, आज का दिन बप्पा के नाम हो जाए। हैप्पी गणेश चतुर्थी।",

    "Wishing you a Happy Vinayak Chaturthi. May the grace of God keep enlightening your lives and bless you always.",

    "I pray to Lord Ganesha that may you have a prosperous and long life. Happy Ganesh Chaturthi!",

    "Om Gan Ganapatay Namo Namah! Shri Siddhivinayak Namo Namah! Asta Vinayak Namo Namah! Ganapati Bappa Moraiya!",

    "May Lord Ganesha keep enlightening your lives and bless you always. Wishing you a Happy Vinayak Chaturthi!",

    "Wishing you a Happy Vinayak Chaturthi. May the grace of God keep enlightening your lives and bless you always.",

    "Destroy your sorrows; Enhance your happiness; And create goodness all around you! Happy Ganesh Chaturthi!",

    "रिद्धि-सिद्धि के तुम दाता, दीन दुखियों के भाग्य विधाता। जय गणपति देवा।",

    "एक, दो ,तीन ,चार, गणपति की जय जयकार। पाँच, छः, सात, आठ, गणपति है सबके साथ। हैप्पी गणेश चतुर्थी।",

    "भगवान गणेश जी आपको खुशियाँ सम्पूर्ण दे, जो भी भक्ति इनकी करे उसे सुख-सम्पति भरपूर दे। हैप्पी गणेश चतुर्थी।",

    "ज़मीन पर आकाश झूम के बरसे, आपके ऊपर अपनों का प्यार बरसे। भगवान गणेश जी से बस यही प्रार्थना हैं, आप ख़ुशी के लिए नही, ख़ुशी आप के लिए तरसे। गणेश चतुर्थी की हार्दिक शुभकामनायें।",

    "May the Lord Vighna Vinayaka remove all obstacles and showers you with bounties..” Happy Vinayak Chaturthi",

    "Lord Ganesh is our mentor and protector. May He enrich your life by always giving you great beginnings and removing obstacles from your life.",

    "May Ganesha always stay your mentor and protector and remove obstacles from your life. Wish you and family a Happy and blessed Ganesh Chaturthi!",

    "Wishing you a Happy Vinayak Chaturthi. May the grace of God keep enlightening your lives and bless you always.",

    "सुख करता जय मोरया, दुख हरता जय मोरया। गणेश चतुर्थी की शुभकामनाएं।",

    "गणेश जी आपको नूर दे, खुशियाँ आपको संपूर्ण दे। आप जाए गणेश जी के दर्शन को, और गणेश जी आपको सुख संपति भरपूर दे। हैप्पी गणेश चतुर्थी।",

    "पग में फूल खिले, हर ख़ुशी आपको मिले, कभी न हो दुखों का सामना, यही है मेरी गणेश चतुर्थी की शुभकामना।",

    "वक्रतुण्ड महाकाय सुर्यकोटि समप्रभ, निर्विघ्नं कुरु मे देव सर्वकार्येषु सर्वदा। शुभ गणेश चतुर्थी।",

    "दिल से जो भी मांगोगे मिलेगा, ये गणेश जी का दरबार है; देवों के देव वक्रतुंड महाकाय को, अपने हर भक्त से प्यार है। गणेश चतुर्थी की हार्दिक शुभकामनाये।",

    "भगवान श्री गणेश की कृपा, बनी रहे आप हर दम; हर कार्य में सफलता मिले, जीवन में न आये कोई गम। गणेश चतुर्थी की शुभकामनाएं।",

    "May you tread on the path of righteousness as shown by Lord Ganesh. Wishing you and your family a very happy Ganesh Chaturthi.",

    "May Lord Ganesha destroy all your worries, sorrows, and tensions and fill your life with love and happiness. Happy Ganesh Chaturthi!",

    "खुशियो की सौगात आए, गणेश जी आपके पास आए। आपके जीवन मे आए सुख संपाति की बाहर, गणेश जी अपने साथ लाए धन सम्पति अपार। गणेश चतुर्थी की हार्दिक शुभकामनाये।",

    "गणेश जी का रूप निराला है, चेहरा भी कितना भोला भाला है। जिसे भी आती है कोई मुसीबत, उसे इन्ही ने तो संभाला है। शुभ गणेश चतुर्थी।",

    "नवभिस्तन्तुभिर्युक्तं त्रिगुणं देवतामयम्, उपवीतं मया दत्तं गृहाण परमेश्वर। हैप्पी गणेश चतुर्थी।",

    "भक्ति गणपति, शक्ति गणपति, सिद्धि गणपति, लक्ष्मी गणपति, महा गणपति। गणेश चतुर्थी की शुभकामना।",

    "ॐ श्रीम गम सौभाग्य गणपतये वर्वर्द सर्वजन्म में वषमान्य नमः॥ शुभ गणेश चतुर्थी।",

    "सुख-सम्पति मिले, मिले ख़ुशी-शांति अपार। आपका जीना सफ़ल हो, जब आप आएँ गणेश जी के द्वार। हैप्पी गणेश चतुर्थी।",

    "सुख मिले समृद्धि मिले, मिले खुशी अपार। आपका जीवन सफल हो, जब आए गणेश जी आपके द्वार। शुभ गणेश चतुर्थी।",

    "ॐ एकदन्ताय विद्धमहे, वक्रतुण्डाय धीमहि, तन्नो दन्ति प्रचोदयात्॥ शुभ गणेश चतुर्थी।",

    "उम्मीद के कई फूल खिलें, हर ख़ुशी आपको मिले। कभी ना हो दुखों का सामना, यहीं हैं मेरी गणेश चतुर्थी की शुभकामना।",

    "करके जग का दूर अंधेरा, आई सुबह लेकर साथ ख़ुशियाँ। गणपती जी की होगी कृपा, हैं सब पर आशीर्वाद उनका। हैप्पी गणेश चतुर्थी।",

    "कर दो हमारे जीवन से, दु:ख दर्दो का नाश। चिंतामण कर दो कृपा, पुर्ण कर दो सब काज। हैप्पी गणेश चतुर्थी।"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Status List",
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      body: SafeArea(
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  StatusDetailPage(data[index], index)));

                      facebookAppEvents.logEvent(
                        name: "Status List",
                        parameters: {
                          'clicked_on_status_index': '$index',
                        },
                      );
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.all(1.93 * SizeConfig.widthMultiplier),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryVariant,
                                ),
                                borderRadius:
                                    // 40 /8.98 = 4.46
                                    BorderRadius.all(Radius.circular(
                                        4.46 * SizeConfig.widthMultiplier))),
                            child: ListTile(
                              leading: Icon(Icons.brightness_1,
                                  color:
                                      Theme.of(context).primaryIconTheme.color),
                              title: Text(
                                data[index],
                                maxLines: 2,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              trailing: Icon(Icons.arrow_forward_ios,
                                  color:
                                      Theme.of(context).primaryIconTheme.color),
                            ),
                          ),
                        ],
                      ),
                    ),
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
