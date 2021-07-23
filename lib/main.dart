import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Play',
      theme: ThemeData(primaryColor: Colors.white),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(text: "Accedi"),
              Tab(text: "Registrati"),
            ],),
          ),
          body: TabBarView(children: [
            Accedi(),
            Registrati(),
          ],),
        ),
      ),
    );
  }
}

class Accedi extends StatelessWidget{
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                //Puoi prendere il valore con emailController.text
                  controller: emailController,
                  validator: (value){
                    if(value!.isNotEmpty){
                      return null;
                    }else{
                      return "Inserisci la tua email";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  )
              ),
              SizedBox(height: 50.0,),
              TextFormField(
                  controller: passwordController,
                  validator: (value){
                    if(value!.isNotEmpty){
                      return null;
                    }else{
                      return "Inserisci la password";
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  )
              ) ,
              SizedBox(height: 50.0,),
            OutlinedButton(
              onPressed: () {
                if(!_formKey.currentState!.validate())
                {
                  return;
                }
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
              ),
              child: const Text("Conferma"),
            ),
            ],
          ),
        ),
      ),
    );
  }
}



class Registrati  extends StatelessWidget{
  TextEditingController emailController = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confermaPassword = new TextEditingController();
  TextEditingController nome = new TextEditingController();
  TextEditingController cognome = new TextEditingController();
  TextEditingController telefono = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Flexible(child: new TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  //Puoi prendere il valore con emailController.text
                  controller: emailController,
                  validator: (value){
                    if(value!.isNotEmpty){
                      return null;
                    }else{
                      return "Inserisci la tua email";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  )
              ), flex: 1,),
              SizedBox(height: 5.0,),
              new Flexible(child: new TextFormField(
                    controller: password,
                    validator: (value){
                      if(value!.isNotEmpty){
                        return null;
                      }else{
                        return "Inserisci la password";
                      }
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    )
              ),flex: 1,),
              SizedBox(height: 5.0,),
              new Flexible(child: new TextFormField(
                controller: confermaPassword,
                validator: (value){
                  if(value != password.text)
                    {
                      return "Le password non combaciano";
                }else{
                    return null;
                  }
                },
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Conferma password',
                )),flex: 1,),
              SizedBox(height: 5.0,),
              new Flexible(child: new TextFormField(
                  controller: nome,
                  validator: (value){
                    if(value!.isNotEmpty){
                      return null;
                    }else{
                      return "Inserisci il tuo nome";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nome',
                  )
              ),flex: 1,),
              SizedBox(height: 5.0,),
              new Flexible(child: new TextFormField(
                  controller: cognome,
                  validator: (value){
                    if(value!.isNotEmpty){
                      return null;
                    }else{
                      return "Inserisci il tuo cognome";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Cognome',
                  )
              ),flex:1),
              SizedBox(height: 5.0,),
              new Flexible(child: new TextFormField(
                  controller: telefono,
                  validator: (value){
                    if(value!.isNotEmpty){
                      return null;
                    }else{
                      return "Inserisci il tuo telefono";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Telefono',
                  )
              ),flex: 1, ),
              SizedBox(height: 5.0,),
              new Flexible(child: new  OutlinedButton(
                onPressed: () {
                  if(!_formKey.currentState!.validate())
                  {
                    return;
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
                ),
                child: const Text("Conferma"),
              ),flex: 1,),
            ],
          ),
        ),
      ),
    );
  }
}







