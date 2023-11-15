import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
   const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: Text(controller.locatonController.value.text.toUpperCase()),
          centerTitle: true,
        ),
        body: controller.isLoading.value ? Center(child: CircularProgressIndicator(),) :
        Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: TextFormField(
                        controller: controller.locatonController.value,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.search),
                          labelText: 'Capital',
                        ),
                      ),
                    ),
                    SizedBox(width: 28,),
                    Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){controller.search();}, child: Text("Search"),)),
                  ],
                ),
              ), ///search bar
              SizedBox(height: 10,),
               Image.network(controller.capitalList[0].flags!.png.toString()),
              SizedBox(height: 10,),
              Center(
                child: Text(
                  controller.capitalList[0].name!.official.toString(),
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
              ),///name
              SizedBox(height: 8,),
              Divider(thickness: 1,),
              SizedBox(height: 8,),
              Center(
                child: Text(
                  "Coat of Arms:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 8,),
              SizedBox(height:100,width:100,child: Image.network(controller.capitalList[0].coatOfArms!.png.toString())),
              SizedBox(height: 8,),
              Divider(thickness: 1,),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Capital : ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                    Text(
                      controller.capitalList[0]!.capital.toString(),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Population : ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    Text(
                      controller.capitalList[0]!.population.toString(),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Area : ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    Text(
                      controller.capitalList[0]!.area.toString() + "skm",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Time Zone : ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    Text(
                      controller.capitalList[0]!.timezones.toString(),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Continent : ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    Text(
                      controller.capitalList[0]!.continents.toString(),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),




            ],
          ),
        ),
      );
    });
  }
}
