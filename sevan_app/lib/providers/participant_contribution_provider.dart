import 'package:flutter/foundation.dart';
import '../models/participant_contribution.dart';

class ParticipantContributionProvider with ChangeNotifier {
  List<ParticipantContribution> _contributions = [];

  List<ParticipantContribution> get contributions {
    return [..._contributions];
  }

  void addContribution(ParticipantContribution contribution) {
    _contributions.add(contribution);
    notifyListeners();
  }
}

