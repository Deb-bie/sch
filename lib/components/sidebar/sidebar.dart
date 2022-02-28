import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';


class SideBar extends StatefulWidget {
  const SideBar({ Key? key }) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> with SingleTickerProviderStateMixin<SideBar> {
  late AnimationController _animationController;
  final bool isSidebarOpened = true;
  late StreamController<bool> isSidebarOpenedStreamController;
  late Stream <bool> isSidebarOpenedStream;
  late StreamSink<bool> isSidebarOpenedSink;
  final _animationDuration = const Duration(milliseconds: 500);

  @override
  void initState(){
    super.initState();
    _animationController = AnimationController(vsync: this, duration: _animationDuration);
    isSidebarOpenedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpenedStreamController.sink;
  }

  @override
  void dispose(){
    _animationController.dispose();
    isSidebarOpenedStreamController.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      _animationController.forward();
    }

  }




  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;


    return StreamBuilder<bool>(
      initialData: false,
      stream: isSidebarOpenedStream,
      builder: (context, isSidebarOpenedAsync){
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: isSidebarOpenedAsync.data == null ? 0 : 0,
          right: isSidebarOpenedAsync.data == null ? 0 : screenWidth - 45,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: const Color(0xFF262AAA),
                ),
              ),
        
              Align(
                alignment: const Alignment(0, -0.9),
                child: GestureDetector(
                  onTap: () {
                    onIconPressed();
                  },
                  child: Container(
                    width: 35,
                    height: 110,
                    color:const Color(0xFF262AAA),
                    alignment: Alignment.centerLeft,
                    child: AnimatedIcon(
                      progress: _animationController.view,
                      icon: AnimatedIcons.menu_close,
                      color: Color(0xFF1BB5FD),
                      size: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}












