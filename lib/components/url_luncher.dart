import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLunch{

  String url;
  TextEditingController emailController = new TextEditingController();
  TextEditingController textController = new TextEditingController();
  String address = '';

  launchURL(String url) async {
    this.url = url;
    if (await canLaunch(this.url)) {
      await launch(this.url);
    } else {
      throw 'Could not launch $this.url';
    }
  }

  emailLunch(){
    final Uri emailLuncher = Uri(
      scheme: 'mailto',
      path: 'born666@icloud.com',
      queryParameters: {
        'subject': 'HPからきました。${emailController.text}と申します。',
        'body' : '${textController.text}'
      }
    );
    return launch(emailLuncher.toString());
  }

}