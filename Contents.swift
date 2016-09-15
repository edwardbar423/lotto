import Foundation

typealias Guess = (Int, Int, Int, Int, Int, powerball: Int)

//-----------------------Random Number Generator----------------------------

func randomNumber(ballOne: UInt32 = 100) -> Int{
    
    return Int(arc4random_uniform(ballOne))
    
}

//-------------------------Lotto Balls Generated-----------------------------

var lotto = [58, 21, 33, 72, 15, 9]
let jackpot = 100
let guess = Guess(randomNumber(), randomNumber(), randomNumber(), randomNumber(), randomNumber(), powerball: randomNumber())



//----------------------------Play Function-----------------------------------

func play(guess:Guess) -> Double {
    
    var winnings : Int = 0
    var powerball = false
    
    for j in 0..<lotto.count{
        
         print("\(lotto[j]) \(guess) \n")
        
        if lotto[j] == guess.0 {
            winnings += 1
        }
        else if lotto[j] == guess.1 {
            winnings += 1
        }
        else if lotto[j] == guess.2 {
            winnings += 1
        }
        else if lotto[j] == guess.3 {
            winnings += 1
        }
        else if lotto[j] == guess.4 {
            winnings += 1
        }

    }
    
    if lotto.last == guess.powerball {
        powerball = true
    }
    
    let prize = jackpot / 10
    let payout : Double = Double( winnings * prize)

    if powerball == true {
        return payout * 2
    }
    else {
        return payout
    }
    
    
}

play(guess:guess)









