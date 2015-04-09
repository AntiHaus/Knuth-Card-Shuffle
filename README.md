# Knuth Card Shuffle
Knuth shuffle an array in Swift.  Create a deck of cards, and give it a shuffle.

```swift
var rank = ["A","2","3","4","5","6","7","8","9","10","J","K"]
var suit = ["♠", "♥","♦","♣"]

var deck = [String]()
for t in suit {
    for r in rank {
        deck.append("\(r)\(t)")
    }
    
}

func shuffleDeck(var deckShuffled:[String]) -> [String] {
    
    for var i = deckShuffled.count-1; i > 0; i-- {
        let j = Int(arc4random_uniform(UInt32(i+1)))
        (deckShuffled[i], deckShuffled[j]) = (deckShuffled[j], deckShuffled[i])
    }
    return deckShuffled
}

println("Unshuffled: \(deck) \n")
println("Knuth Shuffle: \(shuffleDeck(deck)) \n")
```
Unshuffled: [A♠, 2♠, 3♠, 4♠, 5♠, 6♠, 7♠, 8♠, 9♠, 10♠, J♠, K♠, A♥, 2♥, 3♥, 4♥, 5♥, 6♥, 7♥, 8♥, 9♥, 10♥, J♥, K♥, A♦, 2♦, 3♦, 4♦, 5♦, 6♦, 7♦, 8♦, 9♦, 10♦, J♦, K♦, A♣, 2♣, 3♣, 4♣, 5♣, 6♣, 7♣, 8♣, 9♣, 10♣, J♣, K♣] 

Knuth Shuffle: [6♠, 9♥, 8♣, 7♠, 5♦, 4♣, 3♥, 3♣, 3♠, 9♦, 10♥, 4♦, 7♥, 2♠, K♠, A♥, 9♣, 5♥, J♠, 5♠, 4♠, J♣, A♠, 10♦, J♥, 2♥, 2♦, 9♠, A♦, 7♦, 6♥, 5♣, 10♠, K♣, A♣, 4♥, J♦, 8♥, 7♣, 6♦, 3♦, 10♣, 2♣, 6♣, K♦, K♥, 8♦, 8♠] 
