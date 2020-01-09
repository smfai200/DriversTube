import 'package:drivertube/applocalization/appTranslations.dart';
import 'package:drivertube/colors/colors.dart';
import 'package:flutter/material.dart';

class TermsPage extends StatefulWidget {
  const TermsPage({Key key}) : super(key: key);

  @override
  _TermsPageState createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(MyColors().appcolor),
      appBar: AppBar(
        backgroundColor: Color(MyColors().appcolor),
        centerTitle: true,
        // automaticallyImplyLeading: false,
        title: Text(
          AppTranslations.of(context).text("Terms of Service"),
          style: TextStyle(
              color: Color(MyColors().Green),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        elevation: 10,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(17, 20, 17, 200),
          decoration: BoxDecoration(

                    color: Color(MyColors.appColor),
                    border: Border.all(color: Color(MyColors().Green), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
        ),
      ),
    );
  }
}