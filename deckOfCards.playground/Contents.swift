import UIKit

struct Card {

    var color: String = ""
    var roll: Int
    
    init(){
        let random = Int(arc4random_uniform(UInt32(6))+1)
        self.roll = random
        if (self.roll == 1 || self.roll == 2){
            self.color = "Blue"
        } else if(self.roll == 3 || self.roll == 4){
            self.color = "Red"
        } else {
            self.color = "Green"
        }
    }
}

class Deck {
    var cards: [Card]=[]
    
    init(){
        self.generate()
    }
    
    func generate(){
        var bcount: Int = 0
        var rcount: Int = 0
        var gcount: Int = 0
        
        while(self.cards.count < 30){
            
            let newCard = Card()
            if(newCard.color == "Blue" && bcount < 10){
                bcount += 1
                self.cards.append(newCard)
                } else if(newCard.color == "Red" && rcount < 10){
                rcount += 1
                self.cards.append(newCard)
            } else if(newCard.color == "Green" && gcount < 10) {
                gcount += 1
                self.cards.append(newCard)
            }
        }
    }
    
    func top() -> Card{
        var topCard: Card
        topCard = cards[cards.count-1]
        cards.remove(at: cards.count-1)
        return topCard
    }
    
    func isEmpty() -> Bool{
        if(cards.count < 1){
            return true
        } else {
            return false
        }
    }
    
    func shuffle(){
        for i in stride(from: self.cards.count-1, to: 0, by: -1){
            let swapCardsIdx = Int(arc4random_uniform(UInt32(i)))
            let temp = self.cards[i]
            self.cards[i] = self.cards[swapCardsIdx]
            self.cards[swapCardsIdx] = temp
        }
    }
    
}

class Player {
    var name: String = ""
    var hand: [Card]=[]
    
    func draw(deck: Deck)->Card {
        let drawnCard = deck.top()
        self.hand.append(drawnCard)
        return drawnCard
    }
    
    func rollDice()-> Int{
        return Int(arc4random_uniform(UInt32(6))+1)
    }
    
//    func matchingCards(
}

var card1 = Card()
var card2 = Card()
var deck1 = Deck()

print(card1)
print(card2)
deck1.top()
//print(deck1.cards)
print(deck1.isEmpty())
deck1.shuffle()
print(deck1.cards)
print(deck1.cards.count)
