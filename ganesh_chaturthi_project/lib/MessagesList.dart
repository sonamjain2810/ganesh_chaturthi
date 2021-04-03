import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/material.dart';

import 'utils/SizeConfig.dart';
import 'MessageDetailPage.dart';

class MessagesList extends StatefulWidget {
  String type;
  MessagesList({this.type});
  @override
  _MessagesListState createState() => _MessagesListState(type);
}

class _MessagesListState extends State<MessagesList> {
  String type;
  _MessagesListState(this.type);

  static final facebookAppEvents = FacebookAppEvents();

  var data;

  @override
  Widget build(BuildContext context) {
    if (type == '1') {
      data = [
        "तुमच्या आयुष्यातला आनंद,\nगणेशाच्या पोटा इतका विशाल असो,\nअडचणी उंदरा इतक्या लहान असो,\nआयुष्य सोंडे इतके लांब असो,\nक्षण मोदका इतके असो..\nगणेश चतुर्थीच्या हार्दिक शुभेच्छा!!",
        "देव येतोय माझा…\nआस लागली तुझ्या दर्शनाची,\nतुला डोळे भरून पाहण्याची,\nकधी उजाडेल ती सोनेरी पहाट,\nगणराया तुझ्या आगमनाची…",
        "हे गणराया संपूर्ण भारत देशात आलेल्या\nकोरोना सारख्या भयानक रोगापासून\nसंपूर्ण देशाला मुक्त कर हिच तुझ्या चरणी प्रार्थना..\nगणेश चतुर्थी निमित्त सर्वाना\nहार्दिक शुभेच्छा",
        "नूर गणेशाच्या प्रकाशाला भेटला\nप्रत्येकाच्या मनाला धडकी भरते\nगणेशाच्या दारावर जे काही जात\nत्यांना नक्कीच काहीतरी मिळेल\n|| गणपती बाप्पा मोरया ||",
        "माझे गणराज ............\nयेतील गणराज मुषकी बैसोनी\nस्वागत करुया तयांचे हसोनी\nआनंदे भरेल घर आणि सदन\nघरात येता प्रसन्न गजवदन\nदेतील आशिर्वादा सेवून ते मोदका\nकळवा तुमच्या इच्छा त्यांच्या लाडक्या मूषका\nजाणून तुमच्या इच्छा साऱ्या प्रसन्न मंगलमूर्ती\nकरतील योग्य वेळी तुमच्या इच्छांची पूर्ती\nभरून साऱ्यांच्या हृदयी उरती गणांचे अधिपती\nसर्वांना सद्बुद्धी देवोत आपले बाप्पा गणपती",
        "गणेशचतुर्थीचा दिवस आहे खास\nघरात आहे लंबोदराचा निवास\nदहा दिवस आहे आनंदाची रास\nअनंत चतुर्थीला मात्र मन होते उदास…\nसर्व गणेश भक्तांना गणेश चतुर्थीच्या हार्दिक शुभेच्छा!",
        "आजपासून सुरु होणाऱ्या गणेशोत्सवाच्या तुम्हाला,\nव तुमच्या कुटुंबियांना हार्दिक शुभेच्छा!\nबुद्धीची देवता असलेला गणपतीराया,\nआपणा सर्वांना सुख, समृद्धी व यशप्राप्तीसाठी,\nआशीर्वाद देवो, अशी त्याच्या चरणी प्रार्थना…\nगणपती बाप्पा मोरया!!",
        "श्रींच्या चरणी कर माझे जुळले\nतुझ्या दर्शनाने सर्व काही मिळाले\nतुझ्या येण्याने हर्ष, उल्हास,\nसुख, समृध्दी, ऐश्वर्य लाभले\nअशीच कृपा सतत राहू दे…\nसर्व मित्रांना गणेश चतुर्थीच्या हार्दिक शुभेच्छा!",
        "_(_e_)_\nl,l~”~l,l\n“( (”\n,) )\nवक्र तुंड महाकाय,\nसूर्य कोटी समप्रभ!\nनिर्विघ्नं कुरु में दैव,\nसर्व कार्येषु सर्वदा…\nहैप्पी गणेश चतुर्थी!",
        "मोरया मोरया मी बाळ तान्हे,\nतुझीच सेवा करू काय जाणे,\nअन्याय माझे कोट्यान कोटी,\nमोरेश्वरा बा तू घाल पोटी..",
        "आजपासून सुरु होणाऱ्या गणेशोत्सवाच्या तुम्हाला,\nव तुमच्या कुटुंबियांना हार्दिक शुभेच्छा!\nबुद्धीची देवता असलेला गणपतीराया,\nआपणा सर्वांना सुख, समृद्धी व यशप्राप्तीसाठी,\nआशीर्वाद देवो, अशी त्याच्या चरणी प्रार्थना…\nगणपती बाप्पा मोरया!!",
        "सजली अवघी धरती,\nपाहण्यास तुमची कीर्ती..\nतुम्ही येणार म्हटल्यावर,\nनसानसात भरली स्फ़ुर्ती..\nआतुरता फक्त आगमनाची,\nकारण चतुर्थी आमच्या गणेशाची…\nगणपती बाप्पा मोरया!",
        "प्रथम वंदन करूया,\nगणपति बाप्पा मोरया..\nकुणी म्हणे तुज “ओंकारा”\nपुत्र असे तू गौरीहरा..\nकुणी म्हणे तुज “विघ्नहर्ता”\nतू स्रुष्टिचा पालनकर्ता..\nकुणी म्हणे तुज “एकदंता”\nसर्वांचा तू भगवंता..\nकुणी म्हणे तुज “गणपती”\nविद्येचा तू अधिपती..\nकुणी म्हणे तुज “वक्रतुंड”\nशक्तिमान तुझे सोँड..\nगणपती बाप्पा मोरया,\nगणपती बाप्पा मोरया…!",
        "आज संकष्ट चतुर्थी\nश्री गणेशाच्या सर्व प्रिय भक्तांना संकष्ट चतुर्थीच्या हार्दिक शुभेच्छा..\nआजच्या ह्या मंगलदिनी सर्व गणेशभक्तांच्या मनातील\nसर्व ईच्छित मनोकामना श्री गणराय पूर्ण करोत,\nहिच गणरायाच्या चरणी प्रार्थना…\nवक्रतुंड महाकाय, सूर्यकोटि समप्रभ ।।\nनिर्विघ्नं कुरुमेदेव, सर्वकार्येषु सर्वदा ।।\n।। ॐ गं गणपतये नमः ।।",
        "तुमच्या आयुष्यातला आनंद,\nगणेशाच्या पोटा इतका विशाल असो,\nअडचणी उंदरा इतक्या लहान असो,\nआयुष्य सोंडे इतके लांब असो,\nक्षण मोदका इतके गोड असो,\nगणेश चतुर्थीच्या हार्दिक शुभेच्छा…",
        "गणेश चतुर्थीच्या तुम्हा सर्वांना खूप खूप शुभेच्छा\nगणपती बाप्पा मोरया,मंगलमूर्ती मोरया",
        "सिद्धिविनायक मजपुढे मी पाहिला गौरीनंदन मजसमोर मी देखिला तव कर स्पर्श्प्रसाद लाभों मजला यास्तव सर्वस्व रे अर्पिता मी तुजला दिशाहीन भरकटलेल्या सकलाना संमार्गावारी चालवी तूच गजानना तव दिव्व्य शुन्दप्रहरे श्रीगाज्वंदाना क्षणात दूर करी अवधी विगने नाना",
        "चारा घालतो गाईला\nप्रथा ना करतो गणेशाला\nसुखी ठेव माझ्या मित्राला\nहेच वंदन गणपतीला",
        "ऊँ गं गणपतये नमो नमः\nशुभ सकाळ\nसर्व गणेश भक्तांना\nगणेशोत्सवाच्या हार्दिक शुभेच्छा…\nगणपती बाप्पा मोरया !",
        "सर्व गणेशभक्तांना गणेशोत्सवाच्या हार्दिक शुभेच्छा!\nआपल्याला सर्वांना हे वर्ष आनंदाचे जावो,\nहीच गणरायाकडे अमुची मनोकामना!\nगणपती बाप्पा मोरया! मंगलमुर्ती मोरया",
        "गणेश चतुर्थीच्या सुखकारक शुभेच्छा!\nगणपती बाप्पा मोरया मंगलमुर्ति मोरया",
        "\"सर्वांना गणेश चतुर्थीच्या हार्दीक शुभेच्छा.\nतुमच्या मनातील सर्व मनोकामना पूर्ण होवोत ,\nसर्वांना सुख, समृध्दी, ऎश्वर्य,शांती,आरोग्य लाभो हीच\nबाप्पाच्या चरणी प्रार्थना. \"\nगणपती बाप्पा मोरया , मंगलमुर्ती मोरया !!!",
        "तुझ्या आयुश्चय्तला आनंद तय गंरायाच्या काना इतका विशाल असावा\nअडचणी उन्दरा इतक्या लहान असाव्या\nआयुष्य त्याचा सोन्देइत्के लामब असावे आणि\nआयुस्च्यातील क्षण मोदकसारखे गोड असावे\nगणपति बाप्पा मोरिया !",
        "विघ्नहर्ता,मंगलकर्ता आप सब के जीवन में\nनूतन उत्साह का संचार करे समस्त विपत्तियों से आप\nसबकी और आपके परिवार की रक्षा करे…!!\nहे गणपति बप्पा सारी बुराइयो से दूर रख कर\nआप हमें अपने चरणों में स्थान दे…!!!\nगणपति बाप्पा मोरया",
        "॥ॐ गं गणपतये नमः॥\nगणेश चतुर्थीच्या सुखकारक शुभेच्छा!\nगणपती बाप्पा मोरया मंगलमुर्ति मोरया",
        "सुखकर्ता दु:खहर्ता वार्ता विघ्नाची|\nनुरवी पुरवी प्रेम कृपा जयाची |\nसर्वांगी सुंदर उटि शेंदूराची |\nकंठी शोभे माळ मुक्ताफलांची || १ ||\nजय देव जय देव जय मंगलमूरति दर्शानामाथ्रे मन:कामना पुरती || धु||\nरत्नखचित फरा तुज गौरीकुमरा |\nचंदनाची उटि कुमकुम केशरा |\nहीरेजडित मुकुट शोभतो बरा |\nरुन्ज्हुन्ति नूपुरे चरनी घागरिया ||२ ||\nजय देव जय देव ||\nलंबोदर पीताम्बर फनिवरबंधना |\nसरल सोंड वक्रतुंड त्रिनयना |\nदास रामाचा वाट पाहे सादना |\nसंकटी पावावे , निर्वाणी रक्षावे , सुखरवंदना || ३ ||",
        "सिद्धिविनायक मजपुढे मी पाहिला\nगौरीनंदन मजसमोर मी देखिला\nतव कर स्पर्श्प्रसाद लाभों मजला\nयास्तव सर्वस्व रे अर्पिता मी तुजला\nदिशाहीन भरकटलेल्या सकलाना\nसंमार्गावारी चालवी तूच गजानना\nतव दिव्व्य शुन्दप्रहरे श्रीगाज्वंदाना\nक्षणात दूर करी अवधी विगने नाना",
        "जय देव जय देव ||\nमूषीकवाहना मोड़का हस्ता,\nचामरा करना विलंबिता सट्रा,\nवामाना रूपा महेश्वरा पुत्रा,\nविघ्ना विनायका पाड़ा नमस्ते\nहॅपी गणेश चतुर्थी!!",
        "ओम सर्वमंगल मांगल्ये\nशिवे सर्वार्थसाधिके,\nशरण्ये त्र्यंबके गौरी\nनारायणी नमोस्तुते.\nजेष्ठा गौरी आगमनाच्या..\nआपणास व आपल्या\nपरिवारास हार्दिक शुभेच्छा…",
        "हाती कडे पायी तोडे पैंजणाची,\nरुणझुण नथकूडी बाई बुगडी कंकणाची,\nझुमझुम मधुर ध्वनीच्या नादामध्ये\nभक्तां घरी चालली,\nसोनियाच्या पावलांनी महालक्ष्मी आली…\nआपणा सर्व प्रिय जणांना..\nमाता जेष्ठ गौरी आव्हानाच्या,\nहार्दिक शुभेच्छा…",
        "आज गौरी आगमन\nगौरीच्या प्रवेशाने\nतुमच्या घरात,\nसुखं शांती आणि धनधान्याची..\nभरभराट होऊ दे…",
        "निरोप घेतो देवा आम्हा आज्ञा असावी\nचुकले आमुचे काही त्याची क्षमा असावी\nआभाळ भरले होते तु येताना,\nआता डोळे भरुन आलेत तुला पाहुन जाताना..",
        "रुप तुझे देखणे किती अविस्मरणीय वाटते\nपुन्हा पुन्हा पाहता किती ओढ वाटते\nकोणत्या रूपामध्ये भेटशील ना कळे\nधन्य जन्म वाटतो \"मोरया\" तुझ्यामुळे..!",
        "दाटला जरी कंठ तरी\nनिरोप देतो तुला हर्षाने\nमाहीत आहे मला देवा..\nपुन्हा येणार तु वर्षाने..!\n!!गणपती बाप्पा मोरया पुढच्या वर्षी लवकर या!!",
        "मोदकांचा प्रसाद केला\nलाल फुलांचा हार सजवला\nमखर नटून तयार झाले\nवाजत गाजत बाप्पा आले\nगुलाल फुले अक्षता उधळे\nबाप्पाच्या स्वागतासाठी जमले सगळे…\nसर्व गणेश भक्तांना गणेश चतुर्थीच्या हार्दिक शुभेच्छा",
        "तुमच्या मनातील सर्व मनोकामना पूर्ण होवोत ,\nसर्वांना सुख, समृध्दी, ऎश्वर्य,शांती,आरोग्य लाभो हीच\nबाप्पाच्या चरणी प्रार्थना. \"\nगणपती बाप्पा मोरया , मंगलमुर्ती मोरया !!!",
        "बाप्पाच्या येण्याने चैतन्य बहरले\nदुःख आणि संकट दूर पळाले\nतुझ्या भेटीची आस लागते\nतुझ्या नामस्मरणात वर्ष सरून जाते\nअखेर गणेश चतुर्थीला भेट घडते…\nश्री गणेश चतुर्थीच्या हार्दिक शुभेच्छा !",
        "गणराया तुझ्या येण्याने\nसुख, समृध्दी, शांती, आरोग्य लाभले\nसर्व संकटाचे निवारण झाले\nतुझ्या आशिर्वादाने यश लाभले\nअसाच आशीर्वाद राहू दे…\nगणेश चतुर्थीच्या हार्दिक शुभेच्छा !",
        "फुलांची सुरुवात कळीपासून होते,\nजीवनाची सुरुवात प्रेमापासून होते\nप्रेमाची सुरुवात आपल्यापासून होते,\nआणि आपली कामाची सुरुवात\nश्री गणेशा पासून होते\n|| गणपती बाप्पा मोरया ||\n|| मंगल मूर्ती मोरया ||",
        "तूच सुखकर्ता तूच दुःखहर्ता\nअवघ्या दिनांचा नाथा\nबाप्पा मोरया रे, बाप्पा मोरया रे\nचरणी ठेवितो माथा.",
        "बाप्पा आला माझ्या दारी\nशोभा आली माझ्या घरी\nसंकट घे देवा तू सामावून\nआशीर्वाद दे भरभरुन…\nगणपती बाप्पा मोरया,\nमंगल मूर्ती मोरया…",
        "श्रावण सरला, भाद्रपद चतुर्थीची पहाट आली,\nसज्ज व्हा फुले उधळायला\nगणाधिशाची स्वारी आली\nगणपती बाप्पा मोरया!",
        "सजली अवघी धरती,\nपाहण्यास तुमची कीर्ती..\nतुम्ही येणार म्हटल्यावर,\nनसानसात भरली स्फ़ुर्ती..\nआतुरता फक्त आगमनाची,\nकारण चतुर्थी आमच्या गणेशाची…\nगणपती बाप्पा मोरया!",
        "बाप्पाच्या आगमनाने आपल्या जीवनात\nभरभरून सुख समृध्दी ऐश्वर्या येवो..\nहीच गणरायाकडे प्रार्थना!\nगणेश चतुर्थीच्या तुम्हा सर्वांना खूप खूप शुभेच्छा!\nगणपती बाप्पा मोरया… मंगलमूर्ती मोरया…",
        "गणरायाच्या स्वागताची जय्यत तयारी झाली\nमेघांच्या वर्षावाने फुलांची आरास बहरली\nआंनदाने सर्व धरती नटली\nतुझ्या आगमनाने मनाला तृप्ती मिळाली…\nसर्व गणेश भक्तांना गणेश उत्सवाच्या हार्दिक शुभेच्छा!",
        "कडकडाट ढोल ताशांचा गरजला त्रिभुवनी,\nआनंद शेंदूर अन गुलालाचा पसरला दश दिशातुनी\nकेवडा, दूर्वा,जास्वंदांच्या फुलांनी लखलखली आरास,\nनैवैद्याच्या ताटात उकडीच्या मोदकांचा बेत खास\nचला करूया स्वागत गणरायाचे गणेश चतुर्थीचा दिस आज!",
        "गजवदन चतुर्थी संकटी मोरयाची |\nपूजा बांधिली माणिका मोतियांची ||\nजुडी वाहिली पुष्प दुर्वांकुरांची |\nमनी ध्यायिली मूर्त मोरेश्र्वराची ||",
        "गणपती तुझे नांव चांगले |\nआवडे बहु चित्त रंगले ||\nप्रार्थना तुझी गौरी नंदना |\nहे दयानिधे! श्रीगजानना ||",
        "“सर्वांना गणेश चतुर्थीच्या हार्दिक शुभेच्छा.\nतुमच्या मनातील सर्व मनोकामना पूर्ण होवोत,\nसर्वांना सुख, समृद्धि, ऐश्वर्या, शांती,\nआरोग्य लाभो हीच बप्पाच्या चरणी प्रार्थना.”\nगणपति बप्पा मोरया, मंगलमुर्ति मोरया!!!",
        "तुमच्या आयुष्यातला आनंद त्या विद्यनहर्त् याच्या काना इतका विशाल असावा..\nअडचणी उंदरा इतक्या लहान असाव्यात…\nआयुष्य त्याच्या सोंडे इतके लाब असावे आणी\nआयुष्यातले क्षण मोदका प्रमाणे गोड असावेत..\nगणेशोत्सा वाच्या हार्दिक शुभेच्छा..",
        "// श्री गणेशाय नमः//\nवक्रतुंड महाकाय सूर्यकोटि समप्रभ निर्विघ्नं कुरु मे\nदेव सर्व कार्येशु सर्वदा गणपति तुमच्या सगळचा मनोकामना पूर्ण करोत…\nतुम्हाला सुख समृद्धि.. भरभराटी आणि उत्तम आरोग्य लाभो..",
        "आस लागली तुझ्या दर्शनाची तुला डोळे भरून पाहण्याची\nकधी उजडेल सोनेरी पहाट !!बप्पा तुझ्या आगमनाची!!",
        "देवाचे आभार आहेत,\nकारण त्याने आश्रुंना रंग नाही दिल,\nनाहीतर रात्री भिजणारी माझी उशी,\nसकाळी सकाळीही सांगून गेली असती!!",
        "सर्वाना गणेश चतुर्थीच्या हार्दिक शुभेच्छा..\nतुमच्या मनातील सर्व मनोकामना पूर्ण होवोत, सर्वांना सुख, समृद्धि, ऐश्वर्या, शांती,\nआरोग्य लाभो हीच बप्पाच्या चरणी प्रार्थना.\nगणपति बप्पा मोरया, मंगलमुर्ति मोरया!!!",
        "// श्री गणेशाय नमः//\nवक्रतुंड महाकाय सूर्यकोटि समप्रभ\nनिर्विघ्नं कुरु मे देव सर्व कार्येशु सर्वदा!!",
        "देव येतोय मांझा…\nआस लागली तुझ्या दर्शनाची तुला डोळे भरून\nपाहण्याची कधी उजाडेल ती सोनेरी पहाट,\nगणराया तुझ्या आगमनाची…"
      ];
    } else if (type == '2') {
      data = [
        "भक्ति गणपति। शक्ति गणपति।सिद्दी गणपति, लक्ष्मी गणपतिमहा गणपति, देवो में श्रेष्ठ मेरे गणपतिहैप्पी गणेश चतुर्थी",
        "आपका सुख गणेश के पेट जितना बड़ा होआपका दुःख उंदर जैसा छोटा हो,आपकी लाइफ गणेश जी की सूंड जितनी बड़ी होआपके बोल मोदक जैसे मीठे होGANPATI BAPPA MORAIYA",
        "मक्की की रोटी, नीबू का अचार; सूरज की किरणे, खुशियों की बहार; चाँद की चांदनी, अपनों का प्यार; मुबारक हो आपको, गणपति का त्योहार। शुभ गणेश चतुर्थी!",
        "विघ्नहर्ता,मंगलकर्ता सब के जीवन में नूतन उत्साह का संचार करें; समस्त विपत्तियों से आप सबके परिवार की रक्षा करें; सारी बुराइयो से दूर रख कर आप हमें अपने चरणों में स्थान दे। ।। गणपति बाप्पा मोरया ।। ।। मंगल मूर्ति मोरया ।।",
        "गणेश की ज्योति से नूर मिलता हैसबके दिलों को सुरूर मिलता हैजो भी जाता है गणपति के द्वारकुछ न कुछ उन्हें जरूर मिलता हैहैप्पी गणेश चतुर्थी!",
        "सब शुभ कारज में पहले पूजा तेरी,तुम बिना काम ना सरे, अरज सुन मेरी।रिध सिध को लेकर करो भवन में फेरीकरो ऐसी कृपा नित करूँ मैं पूजा तेरी।गणेश चतुर्थी की शुभ कामनाएं!",
        "पग में फूल खिले,हर खुशी आपको मिले,कभी ना हो दुखों का सामना,यही है मेरी गणेश चतुर्थी की शुभकामना!हैप्पी गणेश चतुर्थी",
        "भगवान श्री गणेश की कृपा बनी रहे आप पर हर दम;हर कार्य में सफलता मिले, जीवन में आपके ना आये कोई गम।गणेश चतुर्थी की शुभकामनाएं!",
        "गणेश चतुर्थी 10 दिनों तक चलने वाला हिंदू उत्सव है, जो घर या गर्भगृह में मूर्ति स्थापना के साथ चतुर्थी पर शुरू होता है और गणेश विसर्जन के साथ अनंत चतुर्दशी पर संपन्न होता है।",
        "भगवान श्री गणेश की कृपा बनी रहे आप पर हर दम; हर कार्य में सफलता मिले, जीवन में आपके न आये कोई गम। गणेश चतुर्थी की शुभ कामनायें!",
        "सुख करता जय मोरया, दुख हरता जय मोरया; कृपा सिन्धु जय मोरया, बुद्धि विधाता मोरया; गणपति बप्पा मोरया, मंगल मूर्ती मोरया! गणेश चतुर्थी की शुभ कामनायें!",
        "आपका और खुशियों का, जनम जनम का साथ हो, आपकी तरक्की की, हर किसी की ज़बान पर बात हो, जब भी कोई मुश्किल आये, माय फ्रेंड गणेशा आप के साथ हो…",
        "Mushikavaahana modaka hastha, Chaamara karna vilambitha sutra, Vaamana rupa maheshwara putra, Vighna vinaayaka paada namasthe Happy Ganesh Chaturthy!!!",
        "मक्की की रोटी, नीबू का अचार;सूरज की किरणें, खुशियों की बहार;चाँद की चांदनी, अपनों का प्यार;मुबारक हो आपको, गणपति का त्योहार।शुभ गणेश चतुर्थी !",
        "पग में फूल खिले,हर खुशी आपको मिले,कभी ना हो दुखों का सामना,गणपति लाएं आपकी जिंदगी में खुशियां, यही है मेरी कामना",
        "गणेश जी का रूप निराला है,",
        "दिल से जो भी मांगोगे मिलेगाये गणेश जी का दरबार है,देवों के देव वक्रतुंडा महाकाया कोअपने हर भक्त से प्यार है..।।गणेश चतुर्थी की शुभ कामनाएं ",
        "जय गणपति सद्गुण सदन, करि वर बदन कृपाल। विघ्न हरण मंगल करण, जय जय गिरिजालाल।",
        "गणपति जी का सर पे हाथ हो, हमेशा उनका साथ हो, खुशियों का हो बसेरा, शुरुआत करें विनायक के गुणगान से गणेश चतुर्थी की शुभकामनाएं।",
        "आते हैं बड़ी धूम से हमारे गणपति जी, जाते हैं बड़ी धूम से हमारे गणपति जी और इस तरह सबसे पहले आकर दिलों में बस जाते हैं हमारे गणपति जी। आप सभी को गणेश चतुर्थी की शुभकामनाएं ....",
        "वक्रतुण्ड महाकाय सूर्यकोटि समप्रभ। निर्विघ्नं कुरु मे देव सर्वकार्येषु सर्वदा।। गणेश चतुर्थी की आप सभी को हार्दिक शुभकामनाएं...",
        "नए कार्य की शुरूआत अच्छी हो,हर मनोकामना सच्ची हो,गणेश जी का मन में वास रहे,इस गणेश चतुर्थी आप अपनों के पास रहें।।हैप्पी गणेश चतुर्थी ",
        "सब शुभ कारज में पहले पूजा तेरी, तुम बिना काम ना सरे, अरज सुन मेरी रिध सिध को लेकर करो भवन में फेरी करो ऐसी कृपा नित करूँ मैं पूजा तेरी, गणेश चतुर्थी की शुभ कामनाएं!",
        "भक्ति गणपति। शक्ति गणपति। सिद्दी गणपति, लक्ष्मी गणपति महा गणपति, देवो में श्रेष्ठ मेरे गणपति हैप्पी गणेश चतुर्थी",
        "दिल से जो भी मांगोगे मिलेगा ये गणेश जी का दरबार है, देवों के देव वक्रतुंडा महाकाया को अपने हर भक्त से प्यार है..।। गणेश चतुर्थी की शुभ कामनाएं",
        "गणपति बप्पा आये हैं; साथ खुशहाली लाये हैं; गणपति जी के आशीर्वाद से; हमने सुख के यह गीत गाये हैं। गणेश चतुर्थी की शुभ कामनायें!",
        "Om Gan Ganapatay Namo Namah! Shri Siddhivinayak Namo Namah! Asta Vinayak Namo Namah! Ganapati Bappa Moraiya!",
        "पग में फूल खिले,हर ख़ुशी आपको मिले,कभी ना हो दुखों से सामना,यही मेरी गणेश चतुर्थी की शुभकामना ",
        "रूप बड़ा निराला गणपति मेरा बड़ा प्यारा,जब कभी भी कोई आए मुसीबत,मेरे बप्पा ने पल में हल कर डाला।।हैप्पी गणेश चतुर्थी ",
        "एक दो तीन चार;गणपति जी की जय जय कार;पांच छ: सात आठ;गणपति जी है सबके साथ!शुभ गणेश चतुर्थी !",
        "आते बड़ी धूम से गणपति जी,जाते बड़ी धूम से गणपति जी,आखिर सबसे पहले आकर हमारे दिलों में बस जाते हैं गणपति जी।।गणेश चतुर्थी की हार्दिक शुभकामनाएं "
      ];
    } else {
      data = [
        "May Lord Ganesha keep enlightening your lives and bless you always. Wishing you a Happy Vinayak Chaturthi!",
        "May Lord Ganesha always remove obstacles from your life. Happy Ganesha Chaturthi!",
        "On this occasion of Ganesh Chaturthi, I wish Lord Ganpati visits your home with bags full of happiness, prosperity, and peace.",
        "Wishing you a Happy Vinayak Chaturthi. May the grace of God keep enlightening your lives and bless you always.",
        "A new sunrise, a new start\nOh lord Ganesha, keep loving me as your part.\nHappy Ganesh Chaturthi.",
        "Celebrate festival of Lord Ganesha. Spread message of honesty and love through this world on this day when Ganesha ascended on this earth to kill evil.",
        "G-get A-always N-new E-energy S-spirit and H-happiness. Wish You happy Ganesh Chaturti.",
        "Ganesh Chaturthi Wishes This Year, You Can Have My Share Of Laddus As Well. Happy Ganesh Chaturthi, Enjoy The Break To The Fullest.",
        "Ganpati Bappa Morya! Mangal Murti Morya! Wish you and your family a very happy Ganesh Chaturthi.",
        "God comes to you in many forms\nAnd blesses you in disguise\nHappy Ganesh Chaturthi to you\nCelebrate the God, powerful yet wise.",
        "Have a happy and prosperous life\nMay all your dreams come true\nMay each day of life begin\nWith blessings of Ganesha for you.\nHappy Ganesh Chaturthi.",
        "Hoping this ganesh chatrurthi will be the start of day that brings happiness for you. Happy Ganesh Chaturthi.",
        "May Ganesh is always there to protect you, to bless you, to shower you with his choicest blessings…. Wishing a very Happy Ganesh Chaturthi.”",
        "May God Gives You A Rainbow For Every Storm\nA Smile For Every Tear A Promise For Every Care\nAn Answer To Every Prayer\nWish You A Happy Ganesh Puja…!!\nHappy Ganesh Chaturthi",
        "Wishing you happiness as big as Ganesh’s\nappetite Life is long as his mouse\nand moments as sweet as his laddus\nSending You Wishes On Ganesh Chaturthi",
        "“May lord Ganpati bless you…\nwith the treasure of…\nHealth, Wealth & Happiness…”\nHappy Ganesh Chaturthi",
        "I wish u HAPPY GANESH PUJA and\nI pray to God for ur prosperous life.\nMay you find all the delights of life\nMay ur all Dreams come true.",
        "Hoping This Ganesh Chatrurthi Will Be The Start\nOf Year That Brings Happiness For You,\nHappy Ganesh Chaturthi…!!",
        "May the Blessings Of\nLord Ganesha Always Be Upon You!",
        "Smiling Is A Sign Of One’s Good Mood.\nLaughing Is A Sign Of Happiness. Praying Is A Sign Of Good Faith.\nHaving “You” As My Friend Is A Sign Of Ganesha’s Blessings!\nHappy Ganesh Chaturthi",
        "Celebrate Ganesh Chaturthi\nthe festival of Lord Ganesh.\nSpread the message of honesty\nand love through this world\non this day when Lord Ganesh\ndescended on this earth to kill evil.",
        "May Lord Ganesha destroy all your worries,\nsorrows and tensions and fill your life with love and happiness.\nHappy Ganesh Chaturthi",
        "May lord ganesha bless you on this\nganesh chaturthi you are invited on this occasion.\nHappy Ganesh Chaturthi",
        "May Lord Ganesh bring you\ngood luck and prosperity!",
        "May Lord Ganesh shower you with\nsuccess in all your Endeavours.\nHappy Ganesh chaturthi",
        "Everything that has a beginning has an ending.\nMake your peace with that and all will be well.",
        "May Lord Ganesha shower his blessings on you always…\nJai Shree Siddhi Vinayak",
        "May the blessings of Lord Ganesh be always upon you.",
        "“Warm wishes on Ganesh Chaturthi to you my dear… May the festive colours of Ganesh Chaturthi brighten each and every day of your life.”",
        "“Wishing a beautiful, colourful and cheerful Ganesh Chaturthi to everyone…. May this festive occasion bring along many more smiles and many more celebrations for you.”",
        "“Let us get ready to welcome Lord Ganesha into our lives with great celebrations and festivities to make this Ganesh Chaturthi the most beautiful one.”",
        "“Let us offer prayers to Lord Ganesh with all our hearts and best of our intentions to seek his blessings and love for a beautiful life… Happy Ganesh Chaturthi.”",
        "Today is Ganesh Chaturthi, I wish your desire and wishes become true",
        "Wishing you happiness as big as Ganesh’s appetite,\nLife as long as his trunk,\nTrouble as small as his mouse,\nMoments as sweet as modaks.\nSending you wishes on Ganesh Chaturthi!",
        "G-get\nA-always\nN-new\nE-energy\nS-spirit &\nH-happiness.\nWish you Happy Ganesh Chaturthi!",
        "I pray to God for your prosperous life.\nMay you find all the delights of life,\nMay your all dreams come true.\nHappy Ganesh Chaturthi!",
        "Mushikavaahana modaka hastha,\nChaamara karna vilambitha sutra,\nVaamana rupa maheshwara putra,\nVighna vinaayaka paada Namasthe\nHappy Ganesh Chaturthi!",
        "Lord Ganesha is our mentor and protector.\nMay he enrich your life,\nAnd removing obstacles from your life!\nHappy Ganesh Chaturthi!",
        "May Lord Ganesha Fill Your Life\nWith Prosperity And Success.\nHappy Ganesh Chaturthi.",
        "May lord Ganpati bless you…\nwith the treasure of…\nHealth, Wealth & Happiness…\nHappy Ganesh Chaturthi",
        "“May the lord Vighna Vinayaka removes all obstacles &\nshowers you with bounties..”\nHappy Ganesh Chaturthi",
        "Destroy your sorrows;\nEnhance your happiness;\nAnd create goodness all around you!\nHappy Ganesh Chaturthi!",
        "Hoping this ganesh chatrurthi Will be the start of year that Brings happiness for you. Happy Ganesh Chaturthi!",
        "Hoping this Ganesh Chaturthi Will be the start of an year that Brings happiness for you. Happy Ganesh Chaturthi!",
        "I ask God to make you smile, guide you safely through every mile. Grant you wealth, give you health and most of all love you well. Happy Ganeshotsav.",
        "I heartily wish Lord Ganesha fills your home with prosperity and fortune. Best wishes on Ganesh Chaturthi.",
        "I wish you Happy Ganesh Chaturthi and I pray to God for your prosperous life. May you find all the delights of life, May your all dreams come true.",
        "I wish you Happy Ganesh Utsav and I pray to God for your prosperous life. May you find all delights of life, May your all dreams come true. Happy Ganeshotsav.",
        "Its the auspicious day of Lord Ganesh\nBegin your journey from the start\nBe good and do good\nJust honestly keep playing your part\nHappy Ganesh Chaturthi.",
        "May God give you a rainbow for every storm, a smile for every tear, a promise for every care and an answer to every prayer. Happy Ganesh Chaturthi.",
        "May good health remain in your body all the time, so your charm can always shine, and inspire others to become kind. Happy Ganesh Chaturthi.",
        "May Lord Ganesh bring you good luck and prosperity! Happy Vinayaka Chaturthi.",
        "May Lord Ganesh shower you with succss in all your endeavours. Happy Ganesh Chaturthi.",
        "May the darkness diminish\nMay there be light\nMay loved once never go\nOut of sight\nMay success and Joy always stay\nWish you a Happy Ganeshotsav Day",
        "May the destroyer of evil\nGrace you with peace and love\nAnd blessings be showered upon you\nFrom heaven up above\nHappy Ganesh Chaturthi.",
        "May this Ganesh Chaturthi\nMake all your dreams come true\nMay the Good of Good Luck\nAlways keep his blessings on you.\nHappy Ganesh Chaturthi.",
        "Modak, Aarti and Celebration and Fun\nGanesh Chaturthi has just begun.\nHave a fantastic Ganeshotsav!",
        "On this auspicious occassion of Ganeshotsav\nMake a wish and it shall come true\nBecause Ganesha is the lord of faith\nWho is always watching you.",
        "Sit down among worshippers, O Ganapati, best sage among the sages. Without You nothing can be done. Accept with honor, our hymns of praise. Happy Ganeshotsav.",
        "The year of good luck and fun\nWith blessings of Ganesha has just begun\nThe lord may bless you in every way\nThis is my only prayer today.",
        "This is a special time when family and friends get together for fun. Wishing laughter and fun to cheer your days, In festive season of GANESHA PUJA and always!",
        "Wish you a very happy and prosperous Ganesh Chaturthi. May you find all the delights of life and May all your dreams come true. Happy Ganesh Chaturthi.",
        "I heartily wish Lord Ganesha filled your home with prosperity and fortune. Best wishes on Vinayak Chatrurthi for you and your family! Wish u A Great Vinayak Chaturthi.",
        "Wishing that this year, Lord Ganesha blesses you with lots of happiness, success and prosperity! Happy Vinayak Chaturthi!",
        "Wishing you happiness as big as Ganesh’s appetite life is long as his mouse and moments as sweet as his laddus Sending You Wishes On Ganesh Chaturthi",
        "Destroy your sorrows; Enhance your happiness; And create goodness all around you! Happy Ganesh Chaturthi!",
        "May the lord Vighnavinayaka Remove all obstacles and Shower you with bounties Hope Lord Ganesh visits you With lots of luck and prosperity Happy Vinayak Chaturthi 2020",
        "As rains bless the Earth Likewise, may Lord Ganesha bless u With never-ending happiness Keep smiling and reciting Ganapatti Bappa Morya! Happy Vinayak Chaturthi 2020",
        "May the Lord Vighna Vinayaka remove all obstacles and showers you with bounties..” Happy Vinayak Chaturthi",
        "I pray to God for your prosperous life. May you find all the delights of life, May your all dreams come true. Happy Vinayak Chaturthi!",
        "May Lord Ganesha shower his blessings on you always…Jai Shree Siddhi Vinayak",
        "May the divine blessings\nOf Lord Ganesh bring\nYou eternal bliss.\nProtect you from evil\nAnd fulfil your wishes\nToday and always.",
        "Hoping this Ganesh Chaturthi\nwill be the start of year that\nbrings happiness for you.",
        "May Lord Ganesh bring you good luck and prosperity!\nHappy Vinayaka Chaturthi",
        "Smiling is a sign of one’s good mood;\nLaughing is a sign of happiness;\nPraying is a sign of good faith;\nHave “YOU” as my Friend is a\nsign of Ganesha’s Blessings.\nHappy Ganesh Chaturthi!",
        "Harida – Golden coloured\nAlampata – Infinite Lord\nGanapati – Lord of all Gods\nSiddhidata – Giver of Success\nEshanputra – Son of Lord Shiva\nNideeshwaram – Bestowed of Treasures & Riches\nAvighna – Remover of all difficulties & obstacles\nMay Lord Ganesha in all His incarnations showers His finest blessings on you!\nHappy Ganesh Chaturthi!",
        "Wishing that Lord Ganesha…\nfills your home with…\nProsperity & fortune…\nBest wishes on Ganesh Chatrurthi",
        "May Lord Ganesha gives you –\nA rainbow for every storm,\nA smile for every tear,\nA promise for every care,\nAnd an answer to every prayer!\nHappy Ganesh Chaturthi",
        "A package of very warm wishes,\nA Gift of Love and Happiness…\nA Festival of Worshiping and Blessings.\nMay Your Every Work Never Ended Up.\nA Success Revolves Around Everywhere…\nHappy Ganesh Chaturthi!",
        "May Lord Ganesha\nUproot the Obstacles of your life;\nGive you favourable Beginnings;\nMotivate you with inventiveness;\nAlso, favour you with judgment and intelligence!\nHappy Ganesh Chaturthi!",
        "Wishing you:\nHappiness as big as Ganesha’s appetite;\nLife is long as His trunk;\nTroubles as small as His mouse;\nAnd moments as sweet as His Laddus.\nWarm wishes on Ganesh Chaturthi!",
        "May Lord Ganesha shower abundant good luck on you and may He always bestow you with his blessings…\nHappy Ganesh Chaturthi!",
        "In this Vinayaka, Chaturthi Ganesha Give you a lot of Happiness and Joy. Happy Ganesha Chaturthi.",
        "May the lord vigna Vighna Vinayaka remove all obstacles and shower you with bounties."
      ];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Message List",
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
                                  MessageDetailPage(data[index], index)));

                      facebookAppEvents.logEvent(
                        name: "Message List",
                        parameters: {
                          'clicked_on_message_index': '$index',
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
