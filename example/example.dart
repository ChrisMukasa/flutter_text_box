import 'package:flutter/material.dart';
import 'package:flutter_text_box/flutter_text_box.dart';

class ExampleComboBoxPage extends StatefulWidget {

  @override
  _ExampleComboBoxPageState createState() => _ExampleComboBoxPageState();
}

class _ExampleComboBoxPageState extends State<ExampleComboBoxPage> {
  final key = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextBoxLabel(
                label: 'Fullname',
                hint: 'Please enter your fullname here',
                errorText: 'This field is requiered !',
                onSaved: (String value) { }, 
              ),
              SizedBox(height: 16),
              TextBoxIcon(
                icon: Icons.email_outlined, 
                inputType: TextInputType.emailAddress,
                label: 'Email',
                hint: 'Please enter your email address here',
                errorText: 'This field is requiered !',
                onSaved: (String value) { }, 
              ),
              SizedBox(height: 16),
              TextBoxIcon(
                icon: Icons.lock_outlined, 
                inputType: TextInputType.number,
                obscure: true,
                label: 'Password', 
                hint: 'Please enter your password here', 
                errorText: 'This field is requiered !', 
                onSaved: (String value){ }
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () => submitForm(), 
                child: Text('Submit')
              )
            ],
          ),
        ),
      )
    );
  }

  submitForm(){
    final state = key.currentState;
      if (state!.validate()) {
        state.save();

        //!DO SOME THIS HERE...
      }
  }
}