import 'package:flutter/material.dart';
import 'package:movie_info_app/settings/constants.dart';


//This stateful is required because we need to change state on our category
class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {

  int selectedCategory = 0;
  List<String> categories = [ "In Theater", "Box Office", "Coming Soon" ];


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: KDEFAULTPADDING / 2),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KDEFAULTPADDING),
      child: GestureDetector(
        onTap: (){
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],
              style: Theme.of(context).textTheme.headline5?.copyWith(
                fontWeight: FontWeight.w600,
                color: index == selectedCategory ? KTEXTCOLOR : Colors.black.withOpacity(0.2),
              ),
            ),
            Container(
              height: 6,
              width: 40,
              margin: const EdgeInsets.symmetric(vertical: KDEFAULTPADDING / 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == selectedCategory ? KSECONDARYCOLOR : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
