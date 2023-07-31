import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commmercal/shared/product_card.dart';
import 'package:e_commmercal/styles/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: MediaQuery.of(context).size.height * 0.7,
          floating: false,
          pinned: false,
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            title: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  margin: EdgeInsets.only(right: 20),
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "Fashion Sale",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  )),
            ),

            background: Image.asset(
              'assets/images/banner_1.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        _buildSection(),
        _buildSection(),
        SliverToBoxAdapter(
          child:
            _buildGridStaggedWidget()
        )

      ],
    );
  }

  Widget _buildSection() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            ListTile(
              leading: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New",
                    style: TextStyle(
                      fontSize: 34.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "You’ve never seen it before!",
                    style: TextStyle(
                        color: AppColors.greyTextColor, fontSize: 11.0),
                  )
                ],
              ),
              trailing: Text(
                "View all",
                style: TextStyle(fontSize: 11.0),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 260,
                  viewportFraction: 0.45,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  disableCenter: false),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return   ProductCard();
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildGridStaggedWidget(){
    return StaggeredGrid.count(
      crossAxisCount: 4,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 4,
          mainAxisCellCount: 4,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/banner_image_3.png"),fit: BoxFit.cover
              )
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text("New Collection",style: TextStyle(fontWeight: FontWeight.bold ,fontSize:34,color: Colors.white )),
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,

          child: Container(
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text("Summer Sales",style: TextStyle(fontWeight: FontWeight.bold ,fontSize:34,color:AppColors.primaryColor )),
            ),
          ),

        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 4,
          child: Container(
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/banner_image_2.png"),fit: BoxFit.fitWidth
                )
            ),child: Align(
            alignment: Alignment.center,
            child: Text("Men's Hoodie",style: TextStyle(fontWeight: FontWeight.bold ,fontSize:34,color: Colors.white )),
          ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/banner_image_4.png"),fit: BoxFit.cover
                )
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text("Black",style: TextStyle(fontWeight: FontWeight.bold ,fontSize:34,color: Colors.white )),
            ),
          ),
        ),
      ],);
  }
}
