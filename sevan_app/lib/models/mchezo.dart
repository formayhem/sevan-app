import '../models/participant.dart';
import '../models/participant_contribution.dart';
import '../models/payout.dart';

class Mchezo {
  final String id;
  final String name;
  final List<Participant> participants;
  final List<ParticipantContribution> contributions;
  final List<Payout> payouts;
  final String imageUrl;

  Mchezo({
    required this.id,
    required this.name,
    required this.participants,
    required this.contributions,
    required this.payouts,
    required this.imageUrl,
  });
}