import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    @required this.title,
    @required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(
      title: 'Что такое функция?',
      answers: [
        {'answer': 'Участок кода, заключённый в файл .dart'},
        {
          'answer': 'Подпрограмма, выполняющая определённые действия',
          'isCorrect': true
        },
        {'answer': 'Невидимая сущность, работающая сама по себе'},
        {'answer': 'Нереализованная идея программиста'},
      ],
    ),
    Question(
      title: 'Что подразумевается под замыканием?',
      answers: [
        {
          'answer':
              'Функция, которая ссылается на свободные переменные в своей области видимости',
          'isCorrect': true
        },
        {'answer': 'Тело функции, с программным кодом внутри'},
        {'answer': 'Электрическое соединение двух точек электрической цепи'},
        {'answer': 'Совокупность написанного кода программы'},
      ],
    ),
    Question(
      title: 'Область видимости это - ?',
      answers: [
        {'answer': 'Зона поражения противника'},
        {'answer': 'Статическая область связывания идентификатора с программной сущностью', 'isCorrect': true},
        {'answer': 'Вызов функции внутри класса'},
        {'answer': 'Определённый участок кода, ограниченный функцией'},
      ],
    ),
    Question(
      title: 'Что возвращает callback?',
      answers: [
        {'answer': 'Ничего'},
        {'answer': 'Переменную, ообъявленную внутри функции'},
        {'answer': 'Объект в виде функции', 'isCorrect': true},
        {'answer': 'Программный интерфейс приложения'},
      ],
    ),
    Question(
      title: 'Какая типизация в языке дарт?',
      answers: [
        {'answer': 'Понятие типизация присуще только С подобным языкам'},
        {'answer': 'Слабая типизация'},
        {'answer': 'Дарт не типизарованный язык'},
        {'answer': 'Сильная типизация', 'isCorrect': true},
      ],
    ),
    Question(
      title: 'Основной фреймворка дарта?',
      answers: [
        {'answer': 'Flutter', 'isCorrect': true},
        {'answer': 'React'},
        {'answer': 'Vue'},
        {'answer': 'Django'},
      ],
    ),
    Question(
      title: 'Насколько крут flutter?',
      answers: [
        {'answer': 'Flutter - отстой!'},
        {'answer': '0 / 10'},
        {'answer': 'Flutter хороший фреймворк с большим будущем', 'isCorrect': true},
        {'answer': 'Ни на сколько'},
      ],
    ),
  ];

  List<Question> get questions => [..._data];
}
