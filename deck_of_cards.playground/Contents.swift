import UIKit

var str = "Hello, playground"

struct Card{
    var cardValue: String
    var cardSuit: String
    var numberOfCard: Int
    
}

class Deck
{
    var cards = [Card]()
    
    init()
    {
        self.Reset()
    }
    
    func Reset()
    {
        
        var maybeCardValues: [String] = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
        var maybeSuits: [String] = ["Clubs", "Spades", "Heart", "Diamond"]
        
        for i in 0..<maybeSuits.count
        {
            for j in 0..<maybeCardValues.count
{
    cards.append(Card(cardValue: maybeCardValues[j], cardSuit: maybeSuits[i], numberOfCard: j+1))
            }
        }
    }
    
    func Deal() -> Card
    {
        let topMostCard: Card! = cards.first
        cards.remove(at: 0)
        return topMostCard
    }
    
    func Shuffle()
    {
        for i in 0..<cards.count
        {
            let rand_idx: Int = Int(arc4random_uniform(UInt32(cards.count)))
            let tempCard: Card = cards[i]
            cards[i] = cards[rand_idx]
            cards[rand_idx] = tempCard
        }
    }
}
class Player
{
    var name: String
    var hand: [Card]
    
    init(name: String)
    {
        self.name = name
        self.hand = [Card]()
    }
    
    func Draw(deckOfCards:Deck) -> Card
    {
        let cardThatWasDrawn: Card = deckOfCards.Deal()
        hand.append(cardThatWasDrawn)
        return cardThatWasDrawn
    }
    
    func Discard(cardToDiscard:Card) -> Bool
    {
        for i in 0..<self.hand.count
        {
            if hand[i].numberOfCard == cardToDiscard.numberOfCard && hand[i].cardSuit == cardToDiscard.cardSuit && hand[i].cardValue == cardToDiscard.cardValue{
                hand.remove(at: i)
                return true
            }
            
        }
        return false
    }
    
}

