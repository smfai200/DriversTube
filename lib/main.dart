import 'package:drivertube/colors/colors.dart';
import 'package:drivertube/src/ui/BottomAppBar.dart';
import 'package:drivertube/src/ui/CameraPage.dart';
import 'package:drivertube/src/ui/DonePage.dart';
import 'package:drivertube/src/ui/Filter.dart';
import 'package:drivertube/src/ui/HelpPage.dart';
import 'package:drivertube/src/ui/LanguagePage.dart';
import 'package:drivertube/src/ui/MenuPage.dart';
import 'package:drivertube/src/ui/NoNetwork.dart';
import 'package:drivertube/src/ui/NotificationSettings.dart';
import 'package:drivertube/src/ui/PostDone.dart';
import 'package:drivertube/src/ui/PostPage.dart';
import 'package:drivertube/src/ui/ProfilePage.dart';
import 'package:drivertube/src/ui/SavedPostPage.dart';
import 'package:drivertube/src/ui/SettingsPage.dart';
import 'package:drivertube/src/ui/SignIn.dart';
import 'package:drivertube/src/ui/SignUp.dart';
import 'package:drivertube/src/ui/TermsPage.dart';
import 'package:drivertube/src/ui/spleshscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:drivertube/applocalization/application.dart';
import 'package:drivertube/applocalization/appTranslationsDelegate.dart';
import 'package:drivertube/provider.dart';
import 'package:flutter/services.dart';
import 'package:weather/weather.dart';
WeatherStation weatherStation=new WeatherStation("0b2ad730cce3aae6cc1d29acfd645aa3");
Weather _weather;
double _celsius;
Future<Null> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
   // systemNavigationBarColor: Colors.white,
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark
  ));
  runApp(MyApp());
  _weather=await weatherStation.currentWeather();
  _celsius=_weather.temperature.celsius;

}



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppTranslationsDelegate newLocaleDelegate;

  @override
  void initState() {
    super.initState();
    newLocaleDelegate = AppTranslationsDelegate(newLocale: null);
    application.onLocaleChanged = onLocaleChange;
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
    newLocaleDelegate: newLocaleDelegate,
    child: MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => SpleshScreen(),
        '/bottomapbar': (BuildContext context) => BottomAppBarr(),
       '/filter': (BuildContext context) => FilterPage(),
       '/menu': (BuildContext context) => MenuPage(),
       '/signin': (BuildContext context) => SignInPage(),
       '/signup': (BuildContext context) => SignUpPage(),
       '/done': (BuildContext context) => DonePage(),
       '/settings': (BuildContext context) => SettingsPage(),
        '/NotificationSettings': (BuildContext context) => NotificationSettingsPage(),
        '/language': (BuildContext context) => LanguagePage(),
        '/terms': (BuildContext context) => TermsPage(),
         '/help': (BuildContext context) => HelpPage(),
         '/NoNetwork': (BuildContext context) => NoNetworkPage(),
         '/camera': (BuildContext context) => CameraPage(weathervalue: _celsius,),
         '/post': (BuildContext context) => PostPage(),
         '/postdone': (BuildContext context) => PostDone(),
         '/savedposts': (BuildContext context) => SavedPostPage(),
         '/profile': (BuildContext context) => ProfilePage()
      },
      debugShowCheckedModeBanner: false,
   // home: SpleshScreen(),
      localizationsDelegates:[
        newLocaleDelegate,
        const AppTranslationsDelegate(),
        //provides localised strings
        GlobalMaterialLocalizations.delegate,
        //provides RTL support
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: application.supportedLocales(),
    ),
    );
  }

  void onLocaleChange(Locale locale) async {
    setState(() {
      newLocaleDelegate = AppTranslationsDelegate(newLocale: locale);
    });
  }
}