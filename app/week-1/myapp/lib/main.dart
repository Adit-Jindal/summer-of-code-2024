import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'DSoC',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 50, 150),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 50, 150)),
        useMaterial3: true,
      ),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => LoginPage(),
        '/home' : (BuildContext context) => MyHomePage(),
        '/signup': (BuildContext context) => SignUpPage(),
      },
      initialRoute: '/home',
      home: MyHomePage(),
      // home: LoginPage(),
      // home: SignUpPage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget> [
            ListTile(
              leading: const Icon(Icons.home,),
              title: const Text('Home'),
              onTap: (){Navigator.of(context).pushNamed('/home');}
            ),
            ListTile(
              leading: const Icon(Icons.login,),
              title: const Text('Login'),
              onTap: (){Navigator.of(context).pushNamed('/login');}
            ),
            ListTile(
              leading: const Icon(Icons.add,),
              title: const Text('Sign Up'),
              onTap: (){Navigator.of(context).pushNamed('/signup');}
            ),
          ]
        ),
      ),
      appBar: AppBar(
        title: const Text('DSOC', style: TextStyle(color: Colors.white,)),
        actions: [
          IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                ),
            ),
        ],
        backgroundColor: const Color.fromARGB(255, 0, 50, 150),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                'assets/reshot-illustration-website-development-5QS97CJH2A-9f9a1.png',
              ),
                const Text(
                'Hello, Welcome!',
                style: TextStyle(color: Colors.white, fontSize: 40,),
              ),
                const Text(
              'Welcome to DSOC 2024',
              style: TextStyle(color: Colors.white,),
            ),
              ]
            ),
            const SizedBox(height: 90,),
            Column(
              children:[
                SizedBox(
              width: 200,
              child:
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 246, 213, 164),
                  ),
                  child: const Text('Login', style: TextStyle(color: Colors.black)),
                ),
            ),
                SizedBox(
              width: 200,
              child:
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/signup');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 246, 213, 164),
                  ),
                  child: const Text('Sign Up', style: TextStyle(color: Colors.black)), 
                )
            ),
              ]
            ),
            const SizedBox(height: 30,),
            Column(
              children:[
                const Text(
              'Or via social media',
              style: TextStyle(color: Colors.white,),
            ),
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: (){},
                  icon: const Icon(FontAwesomeIcons.facebook, color: Color.fromARGB(255, 246, 213, 164)),
                  ),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(FontAwesomeIcons.google, color: Color.fromARGB(255, 246, 213, 164)),
                  ),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(FontAwesomeIcons.linkedin, color: Color.fromARGB(255, 246, 213, 164)),
                ),
              ],
            ),
              ]
            ),
          ]
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget> [
            ListTile(
              leading: const Icon(Icons.home,),
              title: const Text('Home'),
              onTap: (){Navigator.of(context).pushNamed('/home');}
            ),
            ListTile(
              leading: const Icon(Icons.login,),
              title: const Text('Login'),
              onTap: (){Navigator.of(context).pushNamed('/login');}
            ),
            ListTile(
              leading: const Icon(Icons.add,),
              title: const Text('Sign Up'),
              onTap: (){Navigator.of(context).pushNamed('/signup');}
            ),
          ]
        ),
      ),
      appBar: AppBar(
        title: const Text('DSOC', style: TextStyle(color: Colors.white,)),
        actions: [
          IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                ),
            ),
        ],
        backgroundColor: const Color.fromARGB(255, 0, 50, 150),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Column(
              children: [
                Container(
                  width: 300,
                  child: Text('Welcome Back!', style: TextStyle(fontSize: 30, color: Colors.white,))
                ),
                Container(
                  width:300,
                  child: Text('Login to continue', style: TextStyle(color: Colors.white),),
                ),
              ]
            ),
            SizedBox(height: 50,),
            Column(
              children: [
                Container(
                  width:300,
                  child: Text('Email', style: TextStyle(color: Colors.white, fontSize: 20,)),
                ),
                Container(
                  width:300,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 252, 246, 219),
                      ),
                    ]
                  ),
                  child: TextField(
                  ),
                ),
              ]
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Container(
                  width:300,
                  child: Text('Password', style: TextStyle(color: Colors.white, fontSize: 20,)),
                ),
                Container(
                  width:300,
                  height:40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 252, 246, 219),
                      ),
                    ]
                  ),
                  child: TextField(),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Remember Me', style: TextStyle(color: Colors.white,),),
                      Text('Forgot Password?', style: TextStyle(color: Colors.white,),),
                    ]
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 246, 213, 164),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ", style: TextStyle(color: Colors.white),),
                    GestureDetector(
                      onTap: (){},
                      child: Text('Sign up', style: TextStyle(color: Color.fromARGB(255, 246, 213, 164), decoration: TextDecoration.underline,),),
                    ),
                  ]
                ),
              ]
            ),
          ]
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget{
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget> [
            ListTile(
              leading: const Icon(Icons.home,),
              title: const Text('Home'),
              onTap: (){Navigator.of(context).pushNamed('/home');}
            ),
            ListTile(
              leading: const Icon(Icons.login,),
              title: const Text('Login'),
              onTap: (){Navigator.of(context).pushNamed('/login');}
            ),
            ListTile(
              leading: const Icon(Icons.add,),
              title: const Text('Sign Up'),
              onTap: (){Navigator.of(context).pushNamed('/signup');}
            ),
          ]
        ),
      ),
      appBar: AppBar(
        title: const Text('DSOC', style: TextStyle(color: Colors.white,)),
        actions: [
          IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                ),
            ),
        ],
        backgroundColor: const Color.fromARGB(255, 0, 50, 150),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: Text(
                'Create Account Now!',
                style: TextStyle(color: Colors.white, fontSize: 25,),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 300,
              child: Column(
                children: [
                  Container(width:300, child:Text('Full Name', style: TextStyle(color: Colors.white,),),),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 252, 246, 219),
                        )
                      ]
                    ),
                    child: TextField(),
                  ),
                  SizedBox(height:30,),
                ]
              ),
            ),
            Container(
              width: 300,
              child: Column(
                children: [
                  Container(width:300, child: Text('Email', style: TextStyle(color: Colors.white,),),),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 252, 246, 219),
                        )
                      ]
                    ),
                    child: TextField(),
                  ),
                  SizedBox(height:30,),
                ]
              ),
            ),
            Container(
              width: 300,
              child: Column(
                children: [
                  Container(width:300, child: Text('Password', style: TextStyle(color: Colors.white,),),),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 252, 246, 219),
                        )
                      ]
                    ),
                    child: TextField(),
                  ),
                  SizedBox(height:30,),
                ]
              ),
            ),
            Container(
              width: 300,
              child: Column(
                children: [
                  Container(width:300, child:Text('Phone No', style: TextStyle(color: Colors.white,),),),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 252, 246, 219),
                        )
                      ]
                    ),
                    child: TextField(),
                  ),
                  SizedBox(height:80,),
                ]
              ),
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 246, 213, 164),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}