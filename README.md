# Playing cards
This is a micro library that provides an OOP representation of playing cards (and related entities such as deck, hand, etc.) for simple terminal-based games.

## `Card` implementation 🂠
The `Card` class provides generic functionality and presentation of playing cards, and can be subclassed for specific card games. Cards are displayed using [Unicode](). Rather than using hardcoded values, the code point for each card is composed at runtime based on the `suit`, `rank`, and `faceup` properties. See [`card.rb`](lib/card.rb) for detail.

## Games
### Klondike
todo


[Unicode]: https://ipfs.io/ipfs/QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco/wiki/Playing_cards_in_Unicode.html