import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Contato extends StatelessWidget {
  const Contato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFEF9FF),
      appBar: AppBar(
        title: Text(
          "Bea's Portifolio",
          style: TextStyle(
            color: Color(0XFFD4C1EE),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0XFF736CEF),
      ),
      body: Center(
        child: Column(
          spacing: 35,
          children: [
            Text(
              "Meus contatos",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFF4B2E85),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0XFFBAA9F1),
                    fixedSize: Size(150, 150),
                  ),
                  onPressed: () async {
                    Uri urlconvertido = Uri.parse(
                      "https://www.linkedin.com/in/beatriz-capelario",
                    );
                    if (await canLaunchUrl(urlconvertido)) {
                      await launchUrl(urlconvertido);
                    }
                  },
                  child: Icon(
                    FontAwesomeIcons.linkedin,
                    color: Color(0XFFFFFFFF),
                    size: 50,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0XFFBAA9F1),
                    fixedSize: Size(150, 150),
                  ),
                  onPressed: () async {
                    Uri urlconvertido = Uri.parse(
                      "https://github.com/BeaCapelario",
                    );
                    if (await canLaunchUrl(urlconvertido)) {
                      await launchUrl(urlconvertido);
                    }
                  },
                  child: Icon(
                    FontAwesomeIcons.github,
                    color: Color(0XFFFFFFFF),
                    size: 50,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0XFFBAA9F1),
                    fixedSize: Size(150, 150),
                  ),
                  onPressed: () async {
                    Uri urlconvertido = Uri.parse(
                      "https://www.instagram.com/beacap.exe/",
                    );
                    if (await canLaunchUrl(urlconvertido)) {
                      await launchUrl(urlconvertido);
                    }
                  },
                  child: Icon(
                    FontAwesomeIcons.instagram,
                    color: Color(0XFFFFFFFF),
                    size: 50,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0XFFBAA9F1),
                    fixedSize: Size(150, 150),
                  ),
                  onPressed: () async {
                    Uri urlconvertido = Uri.parse(
                      "mailto:beatrizcapelario@gmail.com",
                    );
                    if (await canLaunchUrl(urlconvertido)) {
                      await launchUrl(urlconvertido);
                    }
                  },
                  child: Icon(
                    FontAwesomeIcons.envelope,
                    color: Color(0XFFFFFFFF),
                    size: 50,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0XFFBAA9F1),
                    fixedSize: Size(150, 150),
                  ),
                  onPressed: () async {
                    Uri urlconvertido = Uri.parse(
                      "https://wa.me/5515997957718",
                    );
                    if (await canLaunchUrl(urlconvertido)) {
                      await launchUrl(urlconvertido);
                    }
                  },
                  child: Icon(
                    FontAwesomeIcons.whatsapp,
                    color: Color(0XFFFFFFFF),
                    size: 50,
                  ),
                ),
              ],
            ),
            Image.network(
              "https://64.media.tumblr.com/a76e938c3bc73fe2fb4c56263129b5a1/tumblr_ox53ndw4zo1vbdodoo1_500.gif",
              width: 350,
              height: 350,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Color(0xFF736CEF),
        child: Center(
          child: Text(
            "© 2026 Beatriz Capelario - Desenvolvido em Flutter",
            style: TextStyle(color: Color(0XFFD4C1EE)),
          ),
        ),
      ),
    );
  }
}
