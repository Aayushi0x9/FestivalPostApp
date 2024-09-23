import 'package:festival_post_app/headers.dart';

import 'Component/textstyle.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    festivalModel f1 =
        ModalRoute.of(context)!.settings.arguments as festivalModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(f1.name),
        titleSpacing: 1,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10, right: 16, left: 16),
              height: size.height * 0.3,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(4, 4),
                    blurRadius: 2,
                  ),
                ],
                image: DecorationImage(
                    image: NetworkImage(
                      f1.images,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              height: size.height,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.primaries[2].withOpacity(0.3),
                    ),
                    child: Text(
                      'Festival Name : ${f1.name}',
                      style: Mytextstyle(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.primaries[3].withOpacity(0.3),
                    ),
                    child: Text(
                      'Date : ${f1.date}',
                      style: Mytextstyle(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.primaries[4].withOpacity(0.3),
                    ),
                    child: Text(
                      'Slogun : ${f1.slogan}',
                      style: Mytextstyle(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.primaries[10].withOpacity(0.3),
                    ),
                    child: Text(
                      'Story : ${f1.story}',
                      style: Mytextstyle(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.primaries[8].withOpacity(0.3),
                    ),
                    child: Text(
                      'Importance : ${f1.importance}',
                      style: Mytextstyle(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.primaries[15].withOpacity(0.2),
                    ),
                    child: Text(
                      'Details : ${f1.details}',
                      style: Mytextstyle(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
