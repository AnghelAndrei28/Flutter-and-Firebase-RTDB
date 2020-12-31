import 'package:flutter/material.dart';
import 'package:ui_tutorial/bio.dart';

String q1 = '1. FullName';
String q2 = '1. Date of Birth';
String q3 = '1. Country';
String q4 = '1. City';

class SkillShare extends StatefulWidget {
  @override
  _SkillShareState createState() => _SkillShareState();
}

class _SkillShareState extends State<SkillShare> {
  final TextStyle textStyle = TextStyle(color: Colors.red);

  Bio bio;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text(
          'SkillShare App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Add new data',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink)),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MaterialApp(
                            debugShowCheckedModeBanner: false,
                            home: Scaffold(
                              appBar: AppBar(
                                backgroundColor: Colors.pink,
                                leading: IconButton(
                                  icon: Icon(Icons.arrow_back_ios),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                title: Text('New Data'),
                                centerTitle: true,
                              ),
                              body: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 20),
                                          Flexible(
                                              flex: 0,
                                              child: Center(
                                                child: Form(
                                                  child: Flex(
                                                    direction: Axis.vertical,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            q1,
                                                            style: textStyle,
                                                          )
                                                        ],
                                                      ),
                                                      TextFormField(
                                                        initialValue: '',
                                                        validator: (value) => value.isEmpty ? 'This field cannot be empty' : null,
                                                        onSaved: (newValue) => bio.name = newValue,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    )),
                              ),
                            ));
                      }));
                    },
                    iconSize: 30,
                    color: Colors.pink,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
