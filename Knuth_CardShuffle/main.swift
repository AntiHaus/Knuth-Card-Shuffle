import Foundation

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