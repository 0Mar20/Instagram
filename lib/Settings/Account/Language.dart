import 'package:flutter/material.dart';


class LanguageAccPage extends StatefulWidget {
  @override
  _LanguageAccPageState createState() => _LanguageAccPageState();
}

class _LanguageAccPageState extends State<LanguageAccPage> {
  Widget _LanItem({String one, String down, double siz}) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(one, style: TextStyle(color: Colors.black, fontSize: 15)),
            Text(
              down,
              style: TextStyle(color: Colors.black38, fontSize: siz),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 252, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        elevation: 0.8,
        //centerTitle: true ,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Language",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 0,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                fillColor: Colors.transparent,
                filled: true,
                hintStyle: TextStyle(color: Colors.black26, fontSize: 15),
              ),
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("English",
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 10),
                child: Icon(
                  Icons.check,
                  color: Colors.blue,
                ),
              )
            ],
          ),
          _LanItem(one: "Afrikanns", down: "", siz: 0),
          _LanItem(one: "Bahasa Indonesia", down: "Indonesian", siz: 13),
          _LanItem(one: "Bahasa Melayu", down: "Malay", siz: 13),
          _LanItem(one: "Dansk", down: "Danish", siz: 13),
          _LanItem(one: "Deutsch", down: "German", siz: 13),
          _LanItem(one: "English (UK)", down: "", siz: 0),
          _LanItem(one: "Español (España)", down: "Spanish (Spain)", siz: 13),
          _LanItem(one: "Filipino", down: "", siz: 0),
          _LanItem(one: "Français (Canada)", down: "French (Canada)", siz: 13),
          _LanItem(one: "Français (France)", down: "French (France)", siz: 13),
          _LanItem(one: "Hrvatski", down: "Croatian", siz: 13),
          _LanItem(one: "Italiano", down: "Italian", siz: 13),
          _LanItem(one: "Magyar", down: "Hungarian", siz: 13),
          _LanItem(one: "Nederlands", down: "Dutch", siz: 13),
          _LanItem(one: "Norsk (bokmål)", down: "Norwegian (bokmal)", siz: 13),
          _LanItem(one: "Polski", down: "Polish", siz: 13),
          _LanItem(
              one: "Português (Brasil)", down: "Portuguese (Brazil)", siz: 13),
          _LanItem(
              one: "Português (Portugal)",
              down: "Portuguese (Portugal)",
              siz: 13),
          _LanItem(one: "Română", down: "Romanian", siz: 13),
          _LanItem(one: "Slovenčina", down: "Slovak", siz: 13),
          _LanItem(one: "Suomi", down: "Finnish", siz: 13),
          _LanItem(one: "Svenska", down: "Swedish", siz: 13),
          _LanItem(one: "Tiếng Việt", down: "Vietnamese", siz: 13),
          _LanItem(one: "Türkçe", down: "Turkish", siz: 13),
          _LanItem(one: "Čeština", down: "Czech", siz: 13),
          _LanItem(one: "Ελληνικά", down: "Greek", siz: 13),
          _LanItem(one: "български", down: "Bulgarian", siz: 13),
          _LanItem(one: "Pусский", down: "Russian", siz: 13),
          _LanItem(one: "Український", down: "Ukrainian", siz: 13),
          _LanItem(one: "Српски", down: "Serbian", siz: 13),
          _LanItem(one: "עִברִית", down: "Hebrew", siz: 13),
          _LanItem(one: "العربية", down: "Arabic", siz: 13),
          _LanItem(one: "فارسی", down: "Persian", siz: 13),
          _LanItem(one: "हिंदी", down: "Hindi", siz: 13),
          _LanItem(one: "ภาษาไทย", down: "Thai", siz: 13),
          _LanItem(one: "中文 (简体)", down: "Chinese (Simplified)", siz: 13),
          _LanItem(
              one: "中文（繁體，台灣)", down: "Chinese (Traditional, Taiwan)", siz: 13),
          _LanItem(
              one: "中文（繁體，香港）",
              down: "Chinese (Traditional, Hong Kong)",
              siz: 13),
          _LanItem(one: "日本語", down: "Japanese", siz: 13),
          _LanItem(one: "한국어", down: "Korean", siz: 13),
          Container(
            height: 20,
          ),
        ],
      ),
    );
  }
}
