import 'package:destini_app/class/story_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  final storyData = StoryMap();

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 8,
          child: Center(
            child: Text(
              storyData.getStoryText(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: GestureDetector(
              onTap: () {
                print("Button Tapped");

                setState(() {
                  if (storyData.getStoryPath_1() == "Restart") {
                    storyData.restartStory();
                  } else {
                    storyData.nextStory(1);
                  }
                });
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.blueAccent,
                child: GestureDetector(child: Text(storyData.getStoryPath_1())),
              ),
            ),
          ),
        ),
        Expanded(
          child:
              storyData.getStoryPath_2().isNotEmpty
                  ?
                  // True
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: GestureDetector(
                      onTap: () {
                        print("Button Tapped");
                        setState(() {
                          storyData.nextStory(2);
                        });
                      },
                      child: Container(
                        color: Colors.red,
                        alignment: Alignment.center,
                        child: Text(storyData.getStoryPath_2()),
                      ),
                    ),
                  )
                  //False
                  : SizedBox.shrink(),
        ),
      ],
    );
  }
}
