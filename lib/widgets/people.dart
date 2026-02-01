import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget{
  final String name;
  final String phone;
  const PersonCard({super.key, required this.name,required this.phone});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        leading: Icon(Icons.person,size: 35,),
        trailing: Icon(Icons.phone,color: Colors.blue,size: 30,),
        title: Text(name,style: TextStyle(fontSize: 18,color: Colors.red),),
        subtitle: Text(phone),
      ),
    );
  }

}