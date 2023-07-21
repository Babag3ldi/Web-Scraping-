import 'package:flutter/material.dart';
import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';

import 'live_tv_screen.dart';

void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: LiveTVScreen()
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: YoYoPlayer(
          aspectRatio: 16 / 9,
          //url ( .m3u8 video streaming link )
          //example ( url :"https://sfux-ext.sfux.info/hls/chapter/105/1588724110/1588724110.m3u8" )
          //example ( url :"https://player.vimeo.com/external/440218055.m3u8?s=7ec886b4db9c3a52e0e7f5f917ba7287685ef67f&oauth2_token_id=1360367101" )
          url:  "https://horjuntv.com.tm/chanel2/ch007.m3u8",
          videoStyle: VideoStyle(),
          videoLoadingStyle: VideoLoadingStyle(
            loading: Center(
              child: Text("Loading video"),
            ),
          ),
        ),
    );
  }
}