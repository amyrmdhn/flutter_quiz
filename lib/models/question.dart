class Question {
  final String question;
  final List<String> answers;
  final List<String> alphabets;

  const Question({
    required this.question,
    required this.answers,
    this.alphabets = const ['A', 'B', 'C', 'D'],
  });

  List<String> get shuffeledAnswers {
    var shuffeledAnswers = List.of(answers);
    shuffeledAnswers.shuffle();
    return shuffeledAnswers;
  }
}

const questions = [
  Question(
    question: 'What\'s the purpose of a StatefulWidget?',
    answers: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  Question(
    question:
        'Flutter is an open-source UI software development kit created by who?',
    answers: [
      'Google',
      'Apple',
      'Facebook',
      'Microsoft',
    ],
  ),
  Question(
    question:
        'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    answers: [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  Question(
    question: 'How should you update data inside of StatefulWidgets?',
    answers: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  Question(
    question: 'What happens if you change data in a StatelessWidget?',
    answers: [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  Question(
    question: 'How are Flutter UIs built?',
    answers: [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  Question(
    question:
        'Access to a cloud database through Flutter is available through which service?',
    answers: [
      'Firebase Database',
      'SQLite',
      'NOSQL',
      'MYSQL',
    ],
  ),
  Question(
    question:
        'What element is used as an identifier for components when programming in Flutter?',
    answers: [
      'Keys',
      'Widgets',
      'Elements',
      'Serial',
    ],
  ),
  Question(
    question:
        'What type of Flutter animation allows you to represent real-world behavior?',
    answers: [
      'Physics-based',
      'Maths-based',
      'Graph-based',
      'Sim-based',
    ],
  ),
  Question(
    question:
        'Which function will return the widgets attached to the screen as a root of the widget tree to be rendered on screen?',
    answers: [
      'runApp()',
      'main()',
      'container()',
      'materialApp()',
    ],
  ),
];
