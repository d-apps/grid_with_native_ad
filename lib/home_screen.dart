
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final nativeAdmob = NativeAdmob();
  int counter = 0;
  int gridCounter = 0;
  int tileCounter = 0;
  double result;
  int num = 4;


  @override
  Widget build(BuildContext context) {

    Widget _buildGrid(int index){


      return Container(
              color: Colors.green,
              child: Center(
                child: Text("$index"),
                ),
              );

      /*

    NativeAdmobBannerView(
      adUnitID: "ca-app-pub-3940256099942544/2247696110", // Test
      style: BannerStyle.light,
      showMedia: true,
    )

     */

    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Grid with Native Ad'),
        centerTitle: true,
      ),
      body: Container(
        child: StaggeredGridView.countBuilder(
            crossAxisSpacing: 3.0,
            mainAxisSpacing: 3.0,
            itemCount: 20,
            itemBuilder: (context, index){

              return _buildGrid(index);

            },
          crossAxisCount: 2,
          staggeredTileBuilder: (int index){


              return StaggeredTile.count(
                1,
                1,
              );
          },
          ),

        )
       );
  }



}
