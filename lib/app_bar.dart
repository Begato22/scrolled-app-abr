import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 220.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text('App Bar Animation'),
            centerTitle: false,
            collapseMode: CollapseMode.parallax,
            background: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/space.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        end: Alignment.topCenter,
                        begin: Alignment.bottomCenter,
                        colors: [
                          Colors.black,
                          Colors.transparent,
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          floating: true,
          pinned: false,
          leading: const Icon(EneftyIcons.home_2_outline),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 20),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Card(
                    color: Colors.grey.withOpacity(0.3),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        'Item $index',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
              childCount: 50,
            ),
          ),
        ),
      ],
    );
  }
}
