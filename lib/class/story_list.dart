import 'package:destini_app/class/story.dart';

class StoryMap {
  int _storyCurrent = 0;

  List<Story> _storyData = [
    Story(
      story_title:
          'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      choose_text_1: 'I\'ll hop in. Thanks for the help!',
      choose_text_2: 'Better ask him if he\'s a murderer first.',
    ),
    Story(
      story_title: 'He nods slowly, unphased by the question.',
      choose_text_1: 'At least he\'s honest. I\'ll climb in.',
      choose_text_2: 'Wait, I know how to change a tire.',
    ),
    Story(
      story_title:
          'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      choose_text_1: 'I love Elton John! Hand him the cassette tape.',
      choose_text_2: 'It\'s him or me! You take the knife and stab him.',
    ),
    Story(
      story_title:
          'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      choose_text_1: 'Restart',
      choose_text_2: '',
    ),
    Story(
      story_title:
          'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      choose_text_1: 'Restart',
      choose_text_2: '',
    ),
    Story(
      story_title:
          'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      choose_text_1: 'Restart',
      choose_text_2: '',
    ),
  ];

  String getStoryText() {
    return _storyData[_storyCurrent].story_title;
  }

  String getStoryPath_1() {
    return _storyData[_storyCurrent].choose_text_1;
  }

  String getStoryPath_2() {
    return _storyData[_storyCurrent].choose_text_2;
  }

  // userInput tidak dibuat private karena butuh input user sedangkan story harus private 
  // biar tidak di assign dari luar
  void nextStory(int userInput) {
    // return _storyCurrent++;

    if (userInput == 1 && _storyCurrent == 0) {
      _storyCurrent = 2;
    } else if (userInput == 2 && _storyCurrent == 0) {
      _storyCurrent = 1;
    } else if (userInput == 1 && _storyCurrent == 1) {
      _storyCurrent = 2;
    } else if (userInput == 2 && _storyCurrent == 1) {
      _storyCurrent = 3;
    } else if (userInput == 1 && _storyCurrent == 2) {
      _storyCurrent = 5;
    } else if (userInput == 2 && _storyCurrent == 2) {
      _storyCurrent = 4;
    }
  }

  void restartStory() {
    _storyCurrent = 0;
  }
}
