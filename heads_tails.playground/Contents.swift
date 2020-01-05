import UIKit

//Create a function tossCoin() ->  String
//Have this function print "Tossing a Coin!"
//Next have the function randomly pick either "Heads" or "Tails"
//Have the function print the result
//Finally, have the function return the result
//Now create another function tossMultipleCoins(Int) -> Double
//Have this function call the tossCoin function multiple times based on the Integer input
//Have the function return a Double that reflects the ratio of head toss to total toss

let coins = ["Heads","Tails"]

func tossCoin() -> String {
    print("Tossing a Coin!")
    var result: String = coins.randomElement()!
    print(result)
    return result
}

func tossMultipleCoins(numberToToss number: Int) -> Double {
    var result_multiple: String
    var count: Int = 0
    for _ in 1...number {
        result_multiple = tossCoin()
        if result_multiple == "Heads" {
            count = count + 1
        }
    }
    print( Double(count) / Double(number))
    return Double(count) / Double(number)
}
tossCoin()
tossMultipleCoins(numberToToss: 5)
