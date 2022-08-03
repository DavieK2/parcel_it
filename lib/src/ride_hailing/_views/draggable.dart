// import 'package:flutter/material.dart';
// import 'package:parcel_it_app/src/core/_styles/colors.dart';
// import 'package:parcel_it_app/src/ride_hailing/_widgets/rides_tile.dart';

// class DraggableSheet extends StatefulWidget {
//   const DraggableSheet({Key? key}) : super(key: key);

//   @override  State<DraggableSheet> createState() => _DraggableSheetState();
// }

// class _DraggableSheetState extends State<DraggableSheet> {
//   double min = 0.6;
//   late DraggableScrollableController _draggableScrollableController;
//   ScrollController _scrollController = ScrollController();
//   @override
//   void initState() {
//     super.initState();

//     _draggableScrollableController = DraggableScrollableController();

//     _draggableScrollableController.addListener(() {
//       _scrollController.jumpTo(70);
//       print('dragging');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           Container(
//             height: 100,
//             width: double.maxFinite,
//             color: kPrimaryColor,
//           ),
//           DraggableScrollableSheet(
//             controller: _draggableScrollableController,
//             snap: true,
//             maxChildSize: 1,
//             builder: (context, controller) {
//               _scrollController = controller;
//               return Container(
//                 color: Colors.white,
//                 child: SingleChildScrollView(
//                   physics: const BouncingScrollPhysics(),
//                   controller: _scrollController,
//                   padding: const EdgeInsets.only(bottom: 200),
//                   child: Column(
//                     children: [
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'rideName',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                       RidesTileWidget(
//                         selectedRide: '',
//                         rideName: 'Rider',
//                         rideDuration: 5,
//                         ridePrice: 500,
//                         totalPassengers: 4,
//                         onTap: () {},
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
// // return Expanded(
// //         child: Stack(
// //           children: [
// //             // Positioned(
// //             //   top: -100 * (ref.watch(slidingPanelPositionProvider)),
// //             //   child: GestureDetector(
// //             //     onVerticalDragUpdate: (details) {
// //             //       print(details.delta.distance);
// //             //     },
// //             //     child: Column(
// //             //       children: [
// //             //         RidesTileWidget(
// //             //           selectedRide: '',
// //             //           rideName: 'rideName',
// //             //           rideDuration: 5,
// //             //           ridePrice: 500,
// //             //           totalPassengers: 4,
// //             //           onTap: () {},
// //             //         ),
// //             //         RidesTileWidget(
// //             //           selectedRide: '',
// //             //           rideName: 'rideName',
// //             //           rideDuration: 5,
// //             //           ridePrice: 500,
// //             //           totalPassengers: 4,
// //             //           onTap: () {},
// //             //         ),
// //             //       ],
// //             //     ),
// //             //   ),
// //             // ),

// //             Positioned(
// //               top: 0,
// //               left: 0,
// //               right: 0,
// //               bottom: 0,
// //               child: NotificationListener<ScrollNotification>(
// //                 onNotification: (notification) {
// //                   ref.watch(maxScrollExtent.notifier).state = notification.metrics.maxScrollExtent;
// //                   return true;
// //                 },
// //                 child: SingleChildScrollView(
// //                   physics: const BouncingScrollPhysics(),
// //                   controller: ref.watch(scrollController),
// //                   padding: const EdgeInsets.only(bottom: 60),
// //                   child: Column(
// //                     children: [
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'rideName',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                       RidesTileWidget(
// //                         selectedRide: '',
// //                         rideName: 'Rider',
// //                         rideDuration: 5,
// //                         ridePrice: 500,
// //                         totalPassengers: 4,
// //                         onTap: () {},
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             // HookConsumer(builder: (_, ref, __) {
// //             //   return SizedBox(height: 600 - (ref.watch(slidingPanelPositionProvider) * 600));
// //             // }),
// //           ],
// //         ),
// //       );
// //     });
// //   }