import 'package:flutter/material.dart';

class DongTai extends StatefulWidget {
  @override
  _DongTai createState() => _DongTai();
}

class _DongTai extends State<DongTai> {
  @override
  Widget build(BuildContext context) {
    return new ListView(children: <Widget>[
      SizedBox(height: 5,),
      Container(
        height: 150,
        child: Image.network(
            'https://img02.sogoucdn.com/app/a/100520024/ad4741145c4dfd2c0f7c8afed8b1e029'),
      ),
      Divider(),
      GestureDetector(
        child: Card(
          child: Text("这是一条新闻"),
          elevation: 5,
        ),
        onTap: () {
          print("tap new");
        },
      ),
      GestureDetector(
        child: MaterialButton(
          onPressed: () {
            print("000321321");
          },
          child: Text("这是第二条新闻"),
          color: Colors.grey,
        ),
      ),
      Divider(),
      Center(
        child: new Text(
          '\nSonnet',
          style: new TextStyle(
            fontFamily: 'serif',
            fontSize: 26.0,
          ),
        ),
      ),
      Center(
        child: new Text(
          'William Shakespeare\n\n',
          style: new TextStyle(
            fontFamily: 'serif',
            fontSize: 12.0,
          ),
        ),
      ),
      Center(
        child: new Text(
          '''
From fairest creatures we desire increase,
That thereby beauty's rose might never die,
But as the riper should by time decease,
His tender heir might bear his memory;
But thou, contracted to thine own bright eyes,
Feed'st thy light's flame with self-substantial fuel,
Making a famine where abundance lies,
Thyself thy foe, to thy sweet self too cruel.
Thout that are now the world's fresh ornament
And only herald to the gaudy spring,
Within thine own bud buriest thy content
And, tender churl, mak'st waste in niggarding.
Pity the world, or else this glutton be,
To eat the world's due, by the grave and thee.
WHEN forty winters shall besiege thy brow
And dig deep trenches in thy beauty's field,
Thy youth's proud livery, so gazed on now,
Will be a tottered weed of small worth held:
Then being asked where all thy beauty lies,
Where all the treasure of thy lusty days,
To say within thine own deep-sunken eyes
Were an all-eating shame and thriftless praise.
How much more prasie deserved thy beauty's use
If thou couldst answer, 'This fair child of mine
Shall sum my count and make my old excuse,'
Proving his beauty by succession thine.
This were to be new made when thou art old
And see thy blood warm when thou feel'st cold.
LOOK in thy glass, and tell the face thou viewest
Now is the time that face should form another,
Whose fresh repair if now thou renewest,
Thou dost beguile the world, unbless some mother.
For where is she so fair whose uneared womb
Disdains the tillage of thy husbandry?
Or who is he so fond will be the tomb
Of his self-love, to stop posterity?
Thou art thy mother's glass, and she in thee
Calls back the lovely April of her prime;
So thou through windows of thine age shalt see,
Despite of wrinkles, this thy golden time.
But if thou live rememb'red not to be,
Die single, and thine image dies with thee.
             ''',
          style: TextStyle(
            fontFamily: 'serif',
            fontSize: 14.0,
          ),
        ),
      ),
    ]);
  }
}
