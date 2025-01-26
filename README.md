- Overview

This is a Flutter-based Quiz Application that allows users to answer multiple-choice questions and see their final score after completing the quiz. It consists of several components including questions, answers, result display, and the main app logic.

- Project Structure
1. `main.dart`  
   The entry point for the app, responsible for initializing the app and managing the state of the quiz, including questions and user responses. It uses the `Quiz` and `Result` widgets to display the question interface and final results.

2. `quiz.dart`  
   A widget that displays the question and corresponding answers. It takes in a list of questions, the current index of the question, and a callback function to handle the user's answer selection.

3. `question.dart`  
   This widget displays the text for each question. It is designed to show the question content passed to it via its constructor.

4. `answer.dart`  
   A widget that displays each answer option as a button. It accepts a function and the answer text to handle user interaction.

5. `result.dart`  
   Displays the user's final score after completing the quiz. It shows a message with the total score achieved.

6. `answer.txt` & `answer.dart`  
   Both files define the answer widget, which is used to display the answer options as clickable buttons. The difference between them is primarily their location, with `answer.txt` serving as a placeholder or documentation file, while `answer.dart` holds the actual widget code.

7. `question.dart`  
   Contains a stateless widget that renders each question’s text.

---

- How to Run the App

1. Clone the repository to your local machine.
2. Ensure you have Flutter SDK installed.
3. Navigate to the project directory and run the following command:
   
   ```bash
   flutter run
   ```

4. The app will launch, and you can start answering the questions.

---

- Features
- Multiple-choice questions with scoring.
- Displays total score after quiz completion.
- Simple and responsive design using Flutter.

---

- Customization

You can easily modify this app to add more questions or adjust the scoring by editing the `_questions` list in `main.dart`. Each question is a map containing the question text and possible answers with their respective scores.
