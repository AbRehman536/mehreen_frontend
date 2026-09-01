import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login"),
      //   backgroundColor: Colors.blue,
      //   foregroundColor: Colors.white,
      // ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset("assets/images/background.jpg",
                width: double.infinity,
                height: double.infinity,
            fit: BoxFit.fill,),
          ),
          Center(
            child: Container(
              width: 450,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Colors.white,
                      width: 2
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                child: Column(
                  children: [
                    Text("Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 20
                    ),),
                    TextField(
                      decoration: InputDecoration(
                        label: Text("Username"),
                        hint: Text("Abdullah Rehman"),
                        prefixIcon: Icon(Icons.email),
                        prefixIconColor: Colors.white,
                        suffixIconColor: Colors.white,
                        hintStyle: TextStyle(
                          color: Colors.white
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white
                        ),
                        suffixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.white
                          )
                        )
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField( decoration: InputDecoration(
                        label: Text("Password"),
                        hint: Text("*********"),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility),
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.white,
                      hintStyle: TextStyle(
                          color: Colors.white
                      ),
                      labelStyle: TextStyle(
                          color: Colors.white
                      ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        )
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: isCheck,
                                onChanged: (value){
                                  setState(() {
                                    isCheck = value!;
                                  });
                                }
                            ),
                            Text("Remember me",
                              style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                    ),)
                          ],
                        ),
                        TextButton(
                            onPressed: (){},
                            child: Text("Forget Password?",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),))
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.deepPurpleAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                          onPressed: (){},
                          child: Text("Login")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have account?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),),
                        TextButton(onPressed: (){}, child: Text("Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
