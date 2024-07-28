import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0 , vertical: 10),
        child: Column(
          children : [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow[600],
                            )
                          ),
                          Icon(Icons.person , color: Colors.black,),
                         ],
                        ),
                    SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome !" , style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                         ),
                         ),
                        Text(
                          "Piyush Pandey", style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                         ),
                         ),
                      ],
                    ),
                    ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.settings),)
                ]
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width/2,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(25),
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.tertiary,
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.primary,
                  ],
                  transform: const GradientRotation(45),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.grey.shade800,
                    offset: Offset(5,5),
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Total Balance',
                       style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.w600,
                     ),
                  ),
                  const SizedBox(height: 8,),
                  Text(
                      '₹ 50,000',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                           Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                              Icons.arrow_downward,
                                size: 14,
                                color: Colors.lightGreenAccent,
                              ),
                            ),
                          ),
                        const SizedBox(width: 8,),
                        Column(
                         children: [
                           Text(
                               'Income',
                             style: TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.w400,
                             ),
                           ),
                           Text(
                             '₹ 30,000',
                             style: TextStyle(
                               fontSize: 16,
                               fontWeight: FontWeight.w500,
                               ),
                              ),
                             ],
                            )
                          ],
                         ),
                       Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_upward,
                                  size: 14,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8,),
                            Column(
                              children: [
                                Text(
                                  'Expenses',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '₹ 20,000',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Text(
                    'ViewAll',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context ,i){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.redAccent,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'Food',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
