import 'package:flutter/material.dart';
import 'package:news/components/listview_category.dart';
import 'package:news/components/new_listniew_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'News',
                  style: TextStyle(
                    // color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  " Cloud",
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                )
              ],
            )),
        body:
            const CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: ListviewCtegory(),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          NewsListviewBuilder(
            category: 'general',
          ),
          // const SliverToBoxAdapter(child: (NewsListView())),
        ])

        // const Column(
        //   children: [
        //     Padding(padding: EdgeInsets.only(left: 10), child: ListviewCtegory()),
        //     SizedBox(
        //       height: 10
        //     ),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
        );
  }
}
