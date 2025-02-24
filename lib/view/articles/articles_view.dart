import 'package:dr_boutros/data/articles/articles.lists.dart';
import 'package:dr_boutros/helper/custom_app_bar.dart';
import 'package:dr_boutros/view/articles/widget/articles_list_tile.dart';
import 'package:flutter/material.dart';

class ArticlesView extends StatelessWidget {
  const ArticlesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomTextAppBar(
          title: 'مَقَالاتٌ طِبِّيَّة',
        ),
      ),
      body: ListView.builder(
          itemCount: ArticlesLists.articale.length,
          itemBuilder: (context, index) {
            return ArticlesListTile(
              index: index,
            );
          }),
    );
  }
}

// class ArticlesHome extends StatelessWidget {
//   const ArticlesHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const CustomTextAppBar(
//           title: 'مَقَالاتٌ طِبِّيَّة',
//         ),
//       ),
//       body: ElevatedButton(
//         onPressed: () {
//           Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//             return const ArticlesView();
//           }));
//         },
//         child: GridView.builder(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3,
//               crossAxisSpacing: 10,
//               mainAxisSpacing: 10,
//             ),
//             itemCount: 4,
//             itemBuilder: (context, index) {
//               return SizedBox(
//                 height: 100,
//                 width: 100,
//                 child: Column(
//                   children: [
//                     Image.asset(ArticlesLists.articale[index].image),
//                     Center(child: Text(ArticlesLists.articale[index].title)),
//                   ],
//                 ),
//               );
//             }),
//       ),
//     );
//   }
// }
