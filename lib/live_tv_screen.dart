import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:login_api2/live_tv_details.dart';
import 'package:login_api2/live_tv_model.dart';
import 'package:video_player/video_player.dart';

class LiveTVScreen extends StatefulWidget {
  const LiveTVScreen({Key? key}) : super(key: key);

  @override
  State<LiveTVScreen> createState() => _LiveTVScreenState();
}

class _LiveTVScreenState extends State<LiveTVScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 41, 41),
      appBar: AppBar(
        backgroundColor: const Color(0xFFB5EC17), //AppColors.primary,
        centerTitle: true,
        title: const Text(
          "Live TV",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15),
          itemCount: live_tv_list.length,
          itemBuilder: (BuildContext ctx, index) {
            LiveTVModel listsTv = live_tv_list[index];
            return InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LiveTVDetails(listsTv)),
                );
              }),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 80, 79, 79),
                        blurRadius: 2,
                        offset: Offset(0, 2), // Shadow position
                      ),
                    ],
                    color: const Color(0xFF3B3B3B),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 70, width: 90, child: Image.asset(listsTv.image)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      listsTv.title,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
