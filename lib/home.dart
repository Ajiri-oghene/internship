import'package:flutter/material.dart';
import 'package:internship/form.dart';
import 'package:internship/icon_container.dart';
import 'package:internship/switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(Icons.arrow_back),
          centerTitle: false,
          title: const Text('ADD SHIFT',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          actions: [
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Text('Publish',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(width: 10,),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Text('Save',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  )
                ),
              ),
            ),
            const SizedBox(width: 10,),
      
          ],
          bottom: TabBar(
            indicatorColor: Colors.purple,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            tabs: [
              Tab(
                text: '   Shift info       ',
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                // cschedule
                Row(
                  children: [
                    Text(
                      'Schedule Shifts',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    )
                  ],
                ),
                const SizedBox(height: 6),
                //circle avatar
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Text('O',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('07 World tech tower',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 15
                          ),
                        ),
                        Container(
                          width: 260,
                          child: Text('World Tech Tower, Lakhnaur Pind Road, Industrial Area, Sector 74, Sahibzada Aji Singh Nagar, Punjab,',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 6),
                //shift date
                Row(
                  children: [
                    SizedBox(
                      width: 200,
                      child: FormFields(
                        name: 'Shift Date',
                        end_icon: Icons.calendar_month,
                        hint: '2023-12-13',
                        star: Icons.star,
                      ),
                    ),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    Expanded(
                      child:ListTile(
                        title: Text('Color',
                          style: TextStyle(
                              color: Colors.grey
                          ),
                        ),
                        subtitle:  TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(6),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8))),
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.circle,
                                    color: Colors.pink,
                                    size: 30,
                                  ),
                                  Icon(Icons.keyboard_arrow_down,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                //shift Time
                Row(
                  children: [
                    SizedBox(
                      width: 105,
                      child: FormFields(
                        name: 'Shift Time',
                        hint: '09:00a',
                        end_icon: Icons.watch_later_outlined,
                        star: Icons.star,
                      )
                    ),
                    SizedBox(width: 5,),
                    Text('to',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 105,
                      child: FormFields(
                        name: '',
                        hint: '05:00p',
                        end_icon: Icons.watch_later_outlined,
                      )
                    ),
                    SizedBox(width: 5,),
                    Text('8 Hrs 0 mins',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5,),
                // number of staff
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Number of Staff Required',
                      style: TextStyle(
                        color: Colors.grey,
                      )
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconContainer(name: Icons.remove),
                          SizedBox(width: 5,),
                          Text('2',
                            style: TextStyle(
                              color: Colors.grey
                            ),
                          ),
                          SizedBox(width: 5,),
                          IconContainer(name: Icons.add)
                        ]
                      )
                    ),
                  ]
                ),
                SizedBox(height: 5,),
                FormFields(
                    name: 'Site',
                    hint: '07 World tech tower',
                  star: Icons.star,
                ),
                SizedBox(height: 5,),
                Text('Scheduled Staff',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 25),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    width: 110,
                    child: Row(
                      children: [
                        Icon(Icons.add),
                        Text('Add Staff')
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        )
                    ),
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Enable Open shift',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    SwitchMode()
                  ],
                ),
                Divider(),
                SizedBox(height: 5,),
                // remaining open shift
                FormFields(
                  name: 'Remaining open Shift',
                  hint: '1',
                  end_icon: Icons.keyboard_arrow_down,
                ),
                SizedBox(height: 5),
                // remaining open type
                FormFields(
                    name: 'Remaining Open Type',
                    hint: 'First Come',
                    end_icon: Icons.keyboard_arrow_down,
                ),
                SizedBox(height: 5,),
                // publish to
                FormFields(
                  name: 'Publish to',
                  hint: 'All eligible Staff',
                  icon: Icons.info_outline,
                  end_icon: Icons.keyboard_arrow_down,
                ),
                SizedBox(height: 8,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
