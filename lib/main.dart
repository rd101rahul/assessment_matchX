import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'MatchX QA Assessment Application';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();
  final controllers = List.generate(8, (index) => TextEditingController());
  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: ListView(

        children: <Widget>[
          TextFormField(
            key: ValueKey('firstNameTextField'),
            controller: controllers[0],
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your First name',
              labelText: 'First Name',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          const SizedBox(height: 50),

          TextFormField(
            key: ValueKey('lastNameTextField'),
            controller: controllers[1],
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Enter your Last name',
              labelText: 'Last Name',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          const SizedBox(height: 50),

          TextFormField(
            key: ValueKey('emailTextField'),
            controller: controllers[2],
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Enter your Email ID',
              labelText: 'Email ID',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter valid email ID';
              }
              return null;
            },
          ),
          const SizedBox(height: 50),

          TextFormField(
            key: ValueKey('phoneNumberTextField'),
            controller: controllers[3],
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Enter a phone number',
              labelText: 'Phone',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter valid phone number';
              }
              return null;
            },
          ),
          const SizedBox(height: 50),

          TextFormField(
            key: ValueKey('currentCompanyTextField'),
            controller: controllers[4],
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Enter your Current Company Name',
              labelText: 'Current Company Name',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your current Company Name';
              }
              return null;
            },
          ),
          const SizedBox(height: 50),

          TextFormField(
            key: ValueKey('cityTextField'),
            controller: controllers[5],
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Enter your current City',
              labelText: 'City',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your current residing City';
              }
              return null;
            },
          ),
          const SizedBox(height: 50),
          TextFormField(
            key: ValueKey('countryTextField'),
            controller: controllers[6],
            decoration: const InputDecoration(
              icon: const Icon(Icons.calendar_today),
              hintText: 'Enter your current Country',
              labelText: 'Country',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your current residing Country';
              }
              return null;
            },
          ),
          const SizedBox(height: 50),
          TextFormField(
            key: ValueKey('dobTextField'),
            controller: controllers[7],
            decoration: const InputDecoration(
              icon: const Icon(Icons.calendar_today),
              hintText: 'Enter your date of birth',
              labelText: 'Dob',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter valid date';
              }
              return null;
            },
          ),

          const SizedBox(height: 50),
          new Container(
              key: ValueKey('submitButton'),
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Submit'),
                onPressed: () {
                  // It returns true if the form is valid, otherwise returns false
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a Snackbar.
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Data is in processing.')));
                  }
                },
              )),
        ],
      ),
    );
  }
  @override
  void dispose() {
    controllers.forEach((c) => c.dispose());
    super.dispose();
  }

}