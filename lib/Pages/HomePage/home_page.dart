import 'package:festival_post_app/headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Icon fav = Icon(Icons.favorite_border);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black87.withBlue(20),
      appBar: AppBar(
        title: Text(
          'Festivals',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: Colors.black87.withBlue(20),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 0.2,
            ),
            ...List.generate(
              festival.length,
              (index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.festivalPage,
                      arguments: festival[index]);
                },
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 10, right: 16, left: 16, top: 16),
                      height: size.height * 0.25,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(1, 1),
                                blurRadius: 2,
                                spreadRadius: 2),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4, -4),
                              blurRadius: 2,
                            ),
                          ],
                          image: DecorationImage(
                              image: NetworkImage(
                                festival[index].images,
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 2, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FilledButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, MyRoutes.festivalPage,
                                  arguments: festival[index]);
                            },
                            icon: Icon(Icons.edit),
                            label: Text('Edit'),
                          ),
                          FilledButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, MyRoutes.detailPage,
                                  arguments: festival[index]);
                            },
                            icon: Icon(Icons.library_books),
                            label: Text('Details'),
                          ),
                          FilledButton.icon(
                            onPressed: () {
                              fav = Icon(Icons.favorite);
                            },
                            icon: fav,
                            label: Text('Like'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            // Text(
            //   '    Recomended',
            //   selectionColor: Colors.yellow,
            //   semanticsLabel: 'Here',
            //   style: TextStyle(color: Colors.white, fontSize: 18),
            // ),
            // ...List.generate(
            //   festival.length,
            //   (index) => Row(
            //     // mainAxisAlignment: MainAxisAlignment.space/Evenly,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         margin: EdgeInsets.only(left: 16, bottom: 10, top: 16),
            //         height: size.height * 0.3,
            //         width: size.width * 0.5,
            //         color: Colors.blue,
            //       ),
            //       Container(
            //         margin: EdgeInsets.only(right: 16),
            //         height: size.height * 0.1,
            //         width: size.width * 0.42,
            //         decoration: BoxDecoration(
            //           color: Colors.blueGrey,
            //           borderRadius: BorderRadius.only(
            //               topRight: Radius.circular(20),
            //               bottomRight: Radius.circular(20)),
            //         ),
            //         child: Text(
            //           '${festival[index].name}',
            //           style: TextStyle(
            //             letterSpacing: 1,
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //           ),
            //           maxLines: 1,
            //           overflow: TextOverflow.ellipsis,
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
