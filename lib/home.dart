import 'package:flutter/material.dart';
import 'package:live_test2/widgets/people.dart';
class Home extends StatelessWidget{
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final phoneController =  TextEditingController();

    List<Map<String, dynamic>> person =[
      {
        'name': 'Md Abu Rayhan',
        'phone': '01705500372',
      },
      {
        'name': 'Jane Smith',
        'phone': '01405500372',
      },
      {
        'name': 'Dustin',
        'phone': '555-555-5555',
      },
      {
        'name': 'Alice Brown',
        'phone': '111-222-3333',
      },
      {
        'name': 'Charlie Davis',
        'phone': '444-444-4444',
      },
      {
        'name': 'Eve Wilson',
        'phone': '777-777-7777',
      },
      {
        'name': 'Frank Miller',
        'phone': '888-888-8888',
      },
      {
        'name': 'Grace Taylor',
        'phone': '999-999-9999',
      },
      {
        'name': 'Henry Anderson',
        'phone': '123-456-7890',
      },
      {
        'name': 'Ivy Thomas',
        'phone': '234-567-8901',
      },
      {
        'name': 'Jack Clark',
        'phone': '345-678-9012',
      },

    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact List",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),

              SizedBox(height: 10,),

              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),

              SizedBox(height: 12,),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: (){

                  },
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Flexible(
                child: Container(
                  color: Colors.white70,
                  child: ListView.builder(
                    itemCount: person.length,
                    itemBuilder: (context,index){
                      return PersonCard(
                        name: person[index]['name'],
                        phone: person[index]['phone'],
                      );
                    },

                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

}