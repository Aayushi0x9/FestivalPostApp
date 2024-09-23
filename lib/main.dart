import 'package:festival_post_app/Pages/edit_page/edit_page.dart';

import 'headers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black54,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.splashScreen: (context) => SplashScreen(),
        MyRoutes.homePage: (context) => HomePage(),
        MyRoutes.festivalPage: (context) => FestivalPage(),
        MyRoutes.downloadPage: (context) => DownloadPage(),
        MyRoutes.detailPage: (context) => DetailPage(),
        MyRoutes.editPage: (context) => EditPage(),
      },
    );
  }
}
