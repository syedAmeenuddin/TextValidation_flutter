import 'package:flutter/material.dart';

class Textformfield extends StatefulWidget {
  @override
  _TextformfieldState createState() => _TextformfieldState();
}

class _TextformfieldState extends State<Textformfield> {
  @override
  Widget build(BuildContext context) {
    return
      TextFormField(

        // validation
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Enter Password';
          }
          return null;
        },


        controller:null
        ,textAlign: TextAlign.center,
        obscureText: true,
        onChanged: (value) {
        },
        decoration: kTextFieldDecoration.copyWith(
            hintText: 'Enter your Password'),
      );
  }
}
// ignore: camel_case_types
class validation_button extends StatefulWidget {
  @override
  _validation_buttonState createState() => _validation_buttonState();
}

// ignore: camel_case_types
class _validation_buttonState extends State<validation_button> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: RawMaterialButton(onPressed: (){

        if (_formKey.currentState.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('validation process')));
        }

      },
      child: Text('validation'),),
    );
  }
}

const kTextFieldDecoration = InputDecoration(
  hintText: 'hintText',
  contentPadding: EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 20.0,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(30.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(30.0),
    ),
  ),
);

class SubmitButton extends StatelessWidget {
  SubmitButton(
      {@required this.colour, @required this.onPress, @required this.text});
  final colour;
  final onPress;
  final text;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: colour,
      borderRadius: BorderRadius.circular(30.0),
      elevation: 5.0,
      child: MaterialButton(
        onPressed: onPress,
        minWidth: 200,
        height: 40.0,
        child: Text(
          text,
          style: kOnpressTextStyle,
        ),
      ),
    );
  }
}

const kOnpressTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.white,
  fontWeight: FontWeight.w300,
  letterSpacing: 1.0,
);
