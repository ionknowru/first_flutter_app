import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final count;
  final total;
  final Function onClearState;

  Result({Key key, 
    this.count, 
    this.total, 
    this.onClearState
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String msg = '';
    // Widget img;

    if (0 <= count && count <= 2) {
      msg = 'Очень плохо';
      // image = Image.asset('assets/img/bad.png');
    } else if (3 <= count && count <= 5) {
      msg = 'Пойдёт';
      // image = Image.asset('assets/img/norm.png');
    } else {
      msg = 'Хорошо';
      // image = Image.asset('assets/img/horosho.png');
    }

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            spreadRadius: 0,
            offset: Offset(2, 5),
          )
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF5337ff),
            Color(0xFF9131ff),
            Color(0xFFbd27ff),
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          // Container(
          //   width: 120,
          //   height: 120,
          //   child: FittedBox(
          //     fit: BoxFit.contain,
          //     child: image,
          //   ),
          // ),

          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),

          Divider(
            color: Colors.white,
          ),
          Text(
            'Верных ответов $count из $total'
          ),
          Divider(
            color: Colors.white,
          ),

          FlatButton(
            child: Text(
              'Попробовать снова',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onPressed: onClearState,
          ),

        ],
      )
    );
  }
}
