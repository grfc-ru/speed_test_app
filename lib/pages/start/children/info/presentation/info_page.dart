import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../generated/l10n.dart';
import '../../../presentation/widgets/background_widget.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.info_title),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          const BackgroundWidget(),
          const TextInfo(),
          Positioned(
            top: 20,
            left: 25,
            child: Image.asset(
              'assets/images/grfc.png',
              width: 50,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Image.asset(
              'assets/images/ru.png',
              width: 70,
            ),
          ),
        ],
      ),
    );
  }
}

class TextInfo extends StatelessWidget {
  const TextInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              launchUrl(Uri.parse(S.current.org_url));
            },
            child: CardInfo(
              color: Colors.blue[300],
              title: S.current.org_title,
              leading: S.current.org_leading,
            ),
          ),
          GestureDetector(
            onTap: () {
              launchUrl(Uri.parse('tel:+79036627016'));
            },
            child: CardInfo(
              color: Colors.red[200],
              icon: Icons.phone,
              title: '+7 (903) 662-70-16',
              leading: S.current.phone,
            ),
          ),
          GestureDetector(
            onTap: () {
              launchUrl(
                Uri.parse(
                  S.current.mail_to,
                ),
              );
            },
            child: CardInfo(
              color: Colors.amber[700],
              icon: Icons.email,
              title: 'k.bulanov@grfc.ru',
              leading: S.current.email,
            ),
          ),
          FutureBuilder(
            future: PackageInfo.fromPlatform(),
            initialData: "",
            builder: (context, snapshot) => CardInfo(
              color: Colors.teal[200],
              icon: Icons.info,
              title: snapshot.data != ""
                  ? (snapshot.data as PackageInfo).version
                  : "",
              leading: S.current.app_version,
            ),
          ),
        ],
      ),
    );
  }
}

class CardInfo extends StatelessWidget {
  final Color? color;
  final IconData? icon;
  final String? title;
  final String? leading;

  const CardInfo({
    Key? key,
    this.color,
    this.icon,
    this.title,
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 10,
        child: ListTile(
          tileColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          leading: Icon(icon, size: 50),
          title: Text(title!, style: const TextStyle(color: Colors.white)),
          subtitle: Text(leading!, style: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
