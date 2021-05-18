import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upsilon/features/c_solver/models/card.dart';
import 'package:upsilon/features/c_solver/models/game.dart';

part 'game_event.freezed.dart';

@freezed
class GameEvent with _$GameEvent {
  /// [player] has one of the cards in [cards].
  const factory GameEvent.plausibleCards({
    required PlayerId player,
    required Set<Card> cards,
  }) = _PlausibleCards;

  /// [player] definitely has [card].
  const factory GameEvent.playerHasCard({
    required PlayerId player,
    required Card card,
  }) = _PlayerHasCard;
}
