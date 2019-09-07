
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final nativeAdmob = NativeAdmob();
  int counter = 0;


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width / 2;
    double height = MediaQuery.of(context).size.height / 3.5;

    Widget _buildGrid(int index){

      double result = index.toDouble() % 3;

      return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[

            Row(
              children: <Widget>[

                Image.network(
                  "https://www.belasmensagens.com.br/wp-content/uploads/2018/03/pontuacao-em-uma-frase-400x300.jpg",
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                ),

                Image.network(
                  "https://www.belasmensagens.com.br/wp-content/uploads/2018/03/pontuacao-em-uma-frase-400x300.jpg",
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                ),

              ],

            ),

            result == 0.0 && index != 0 ?
            NativeAdmobBannerView(
              adUnitID: "ca-app-pub-3940256099942544/2247696110", // Test
              style: BannerStyle.light,
              showMedia: true,
              contentPadding: const EdgeInsets.all(8),
            )
                : Container(
              height: 0,
            )

          ],
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
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
          itemCount: 13,
          itemBuilder: (context, index){

            return _buildGrid(index);
          },
        )
        ),
      );
  }
}
