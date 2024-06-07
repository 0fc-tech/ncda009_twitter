import 'package:flutter/material.dart';

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  TextEditingController tecId = TextEditingController(text: "");
  TextEditingController tecMdp = TextEditingController(text: "");
  bool memoriser = false;
  final keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: tecId,
            decoration: InputDecoration(label: Text("email")),
            validator: (field){
              if(field == null){
                return "champ incomplet";
              }
              if(field!.length < 2){
                return "Pas assez de caractères";
              }
              return null;
            },
          ),
          TextFormField(
              controller: tecMdp,
              decoration: InputDecoration(label: Text("mdp")),
              validator: (field){
                if(field == null){
                  return "champ incomplet";
                }
                if(field!.length < 2){
                  return "Pas assez de caractères";
                }
                return null;
              },
          ),
          Row(
            children: [
              Switch(
                value: memoriser,
                onChanged:(newValue){
                  setState(() {
                    memoriser = newValue;
                  });
                }
              ),
              Text("Mémoriser mes informations")
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
              child: FilledButton(
                  onPressed: (){
                    if(keyForm.currentState?.validate() == true){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Connecté"))
                      );
                    }
                  },
                  child: Text("Connexion")
              )
          )
        ],
      ),
    );
  }
}
