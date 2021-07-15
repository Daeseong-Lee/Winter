import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutineDetail extends StatelessWidget {
  const RoutineDetail({Key? key}) : super(key: key);

  PreferredSizeWidget _appBarWidget(){
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          CupertinoIcons.chevron_down,
          color: Colors.white,
        ),
        onPressed: (){
          Get.back();
        },
      ),
      actions: [
        IconButton(
          onPressed: (){
            //Get.to(alarm)
          },
          icon: Icon(
            CupertinoIcons.bell_circle_fill,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: (){
            //Get.to(myPage)
          },
          icon: Icon(
            CupertinoIcons.person_crop_circle_fill,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _bodyWidget(context) {
    return Container(
        padding: const EdgeInsets.all(20.0),
        height: Get.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0)
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){
                          //Get.to(User)
                        }, icon: Icon(
                          CupertinoIcons.person_crop_circle_fill,
                          color: Colors.grey,)),
                        Text(
                          "Name",
                          style: Theme.of(context).textTheme.overline!.copyWith(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.0,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text(
                            "|",
                            style: Theme.of(context).textTheme.overline!.copyWith(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,
                                color: Colors.grey
                            )
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Text(
                            "Job",
                            style: Theme.of(context).textTheme.overline!.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w200,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: IconButton(onPressed: (){}, icon: Icon(
                              CupertinoIcons.ellipsis
                          )),
                        )
                      ],
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kims Miracle Morning",
                            style: Theme.of(context).textTheme.overline!.copyWith(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                            ),
                          ),
                          Text(
                            "#LifePattern #Morning",
                            style: Theme.of(context).textTheme.overline!.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                              color: Colors.grey,
                            ),
                          ),
                        ]
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                            child: Column(
                              mainAxisAlignment : MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Follower",
                                  style: Theme.of(context).textTheme.overline!.copyWith(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "301",
                                  style: Theme.of(context).textTheme.overline!.copyWith(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 68,
                                height: 68,
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                              ),
                            ]
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(onPressed: (){}, icon: Text("Sun", style: TextStyle(fontSize: 13),)),
                              IconButton(onPressed: (){}, icon: Text("Mon", style: TextStyle(fontSize: 13),)),
                              IconButton(onPressed: (){}, icon: Text("Tue", style: TextStyle(fontSize: 13),)),
                              IconButton(onPressed: (){}, icon: Text("Wed", style: TextStyle(fontSize: 13),)),
                              IconButton(onPressed: (){}, icon: Text("Thu", style: TextStyle(fontSize: 13),)),
                              IconButton(onPressed: (){}, icon: Text("Fri", style: TextStyle(fontSize: 13),)),
                              IconButton(onPressed: (){}, icon: Text("Sat", style: TextStyle(fontSize: 13),)),
                            ],
                          ),
                          Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    children: [
                                      Container(width: 40, child: Text("9:30", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),)),
                                      SizedBox(width: 40,),
                                      Expanded(
                                        child: Container(
                                          height: 30,
                                          child: Center(
                                              child: Text("Run",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),)),
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius: BorderRadius.circular(5)),),),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    children: [
                                      Container(width: 40, child: Text("9:30", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),)),
                                      SizedBox(width: 40,),
                                      Expanded(
                                        child: Container(
                                          height: 30,
                                          child: Center(
                                              child: Text("Breakfast",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),)),
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius: BorderRadius.circular(5)),),),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    children: [
                                      Container(width: 40, child: Text("10:00", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),)),
                                      SizedBox(width: 40,),
                                      Expanded(
                                        child: Container(
                                          height: 30,
                                          child: Center(
                                              child: Text("Vitamin",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),)),
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius: BorderRadius.circular(5)),),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
            )
          ],
        )
    );
  }

  Widget _bottomSheetWidget(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 12.0,
      ),
      height: 70.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: const Text.rich(
                TextSpan(
                  text: 'Routine Follow',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: _bodyWidget(context),
      bottomSheet: _bottomSheetWidget(),
    );
  }
}
