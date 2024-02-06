import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [Colors.purple, Colors.deepPurpleAccent, Colors.blue],
        ),
      ),
    ),
  );
}


/*
***Learnings***:

runApp(): Runs the app
MaterialApp(): Does a lot of behind the scenes configurations

---Arguments---
By default postional arguments are required and named arguments are optional can be be omitted
Positional Argument: a & b are positional parameters
void add(a+b) {
  print(a + b);
}
add(5,10); 5 is used as a value for a because its the first argument 10 is used for b


Named Argument: The name of an argument determines which parameter receives the value
void add({a,b}){  a & b are named parameters because of {}
  print(a+b);
}

add(b: 5, a: 10) 5 is used as a value for b, because its assigned to that name, 10 is used as a value for a

you can make positional arguments optional with []
void add(a, [b])  b is optional

Once a parameter is optional you can also assign a default value to it
void add(a, [b = 5])  b has a default value of 5

You can also make named parameters requiered by using the built-in required keyword
void add ({required a, required b}) a and b are no longer optional

---Const---

const: is a keyword that helps dart optimize runtime performance
--> if used for first time its stored in the device, for second time its already saved and can be used again

if you know that you´ll never assign a new value to a variable you should use final

final startAlignment = Alignment.topLeft; final means this variable will never recieve a new value
--> Useful to signalise partners that they should not change the value of a variable

const before a variable is also possible, it makes sure that you cant reassign those variables
When you use const infront of a variable, it is locked in at the time point the code is compiled but thats not always the case
like if the value of a variable = getAlignment(), means this function must be executed once the code runs to get the value of the variable

you should use const instead of final if it makes sense





Scaffold Widget: Helps us with setting up a good looking screen
runApp(const Material(home: Scaffold(bodey: Center(child: Text('Hello World!'),),),),);

Für Formatierung des Codes: Komma setzen, Shift + option + F or Format Codument in search bar
Refactor: changing your existing code, just right clock on the line/word and you can wrap it with something

Container Widget: Useful for configuring styling and layout widgets, has many useful arguments, does not support const

Generic Types: are flexible types that need to work together with other types


-Inheritance for classes: x extends y

-Functions: The thing infront of a function is the return value --> widget build(context) {} , build() returns widget
inside the method or function that should return a value you use return in {}. After return you put in the value you want to return

Example:

int add(int num1, int num2){
  return num1 + num2;
}

void main() {
  print(add(5, 2));   //returned value 7 is used here and can be used
}


-build(context), the context is also for metadata, it tells flutter where you use your own classes inside of the app
-@override: you use it to tell, that you really do extend from another class and it has metadata purposes
-void: --> void main(), the function doesnt or shouldnt return any value

---Constructor & Inheritance---:

The Class from where we are inheriting wants a key argument, thats why the container class needs a key argument and forwards it
After that you reach out to the parent class with super and execute it like a function super(key: key) and it reffers to the childs
key that is needed

class GradientContainer extends StatelessWidget {
  GradientContainer({key}): super(key: key);
}

The shortcut for that is: GradientContainer({super.key});


---Variables---
You create them with the var keyword: var greetingText = "Hello World"
Because you can change the varibales at any point you cannot combine them with const, because const only is placed befor static
objects that are not changed all the time. The problem is that you would cache something outdated

If you dont assign a value to a variable initally you can not use var at the beginning isntead you should use the type of the variable with a ?
Alignment? startAlignment; ? means either value or null

---Stateful & Stateless Widget---
Stateful benutzt man dort wo sich die UI ständig verändern könnte, wie z.B. bei einem Würfel der gewürfelt wird
Stateless bei statischen Elementen. Deshalb isolieren, falls es geht

When using stateful widgets you always have to use 2 classes, the seccond class starts with an _ which means that the class is private
and will not be accessible through import only in the partner class useable




***Tipps***:
-Flutter Widget Catalog
-How to know which widgets to use: experience, control + space: a suggestion that fits, 
official documentation flutter + widget
-If you want to change the style of a object: First step should be to check if there are any additional arguments you can use

!!-Best Practice: Break big widget trees apart and build your own widgets, which you can then use to split your code to smaller
. potential reusable building blocks, then you combine these widgets

-Flutter Packages: pub.dev many 3rd party packages






*/