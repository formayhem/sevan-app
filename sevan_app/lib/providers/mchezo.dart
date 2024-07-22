import 'package:flutter/material.dart';

import '../models/participant.dart';
import '../models/participant_contribution.dart';
import '../models/payout.dart';

class Mchezo with ChangeNotifier{
  final String id;
  final String name;
  final int participants;
  final double contributions;
  final int days;
  final String imageUrl;
 

  Mchezo({
    required this.id,
    required this.name,
    required this.participants,
    required this.contributions,
    required this.days,
    required this.imageUrl,
   
  });

 
}