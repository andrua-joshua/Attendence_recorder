import 'package:attendance_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandableWidget extends StatefulWidget{
  final String label;
  final List<Widget> items;
  const ExpandableWidget({
    required this.items,
    required this.label,
    super.key
  });

  @override
  _expandableWidgetState createState() => _expandableWidgetState();
}


class _expandableWidgetState extends State<ExpandableWidget>{

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child:Text(
                widget.label,
                style: AppStyles.normalBlackTextStyle,
              )),
              const SizedBox(width: 15,),
              IconButton(
                onPressed: (){
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                }, 
                icon: Icon(
                  _isExpanded?Icons.keyboard_arrow_up: Icons.keyboard_arrow_down,
                  color: Colors.black,
                ))
            ],
          ),
        ),
        SizedBox(height: 5,),
        const Divider(height: 0.5, color: Colors.grey,),
        SizedBox(height: 10,),
        SizedBox(
          child: _isExpanded
          ?Column(
            children: widget.items,
          ):null,
        )
      ],
    );
  }
}