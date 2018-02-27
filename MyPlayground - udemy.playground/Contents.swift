//: Playground - noun: a place where people can play

import UIKit

/// swift basic variables - SECTION 1
var int : Int = 0
var float : Float = 0.0     // handle smaller decimal
var double : Double = 0.0   // handle bigger decimal
var boolean : Bool = true   // handle true or false
var string : String = "im a string"

// short cut
var shortInt = 0

/// learning function - SECTION 2

// initialize function output
func robot() {
    print("move")
    print("shoot laser")
}

// call function
robot()
print() // space purpose only

/// Output function - SECTION 3

func addition(a : Int, b : Int) -> Int {
    let answer = a + b
    
    // must return something in this case Integer
    return answer
}

// call function and returned int
addition(a:10,b:5)

/// control flow with conditional statements If Else - SECTION 4
func loveCalculator(yourName:String, herName:String) -> String {
    
    let lovePercentage = Int(arc4random_uniform(101)) // random 0 - 100
    
    // check if else condition
    if lovePercentage < 50 {
        return "\(lovePercentage)%, you are not suited to each other"
    } else if lovePercentage < 80 && lovePercentage > 50 {
        return "\(lovePercentage)%, you are kinda suited to each other <3"
    }else {
        return "\(lovePercentage)%, you are really suited to each other <3 <3"
    }
}

print("love calculator")
print(loveCalculator(yourName: "firnaz", herName: "gita"))
print() // space purpose only

/// CHALLENGE
// CREATE A BMI CALCULATOR WHICH MEASURE HOW FIT OF A PERSON BASE ON MASS AND WEIGHT

func calculateBMI(height:Float, weight:Float) -> String {
    let getBMI = weight / (height * height)
    var suggestedWeight: Float = 0.0
    
    if getBMI > 30 {
        suggestedWeight = 25 * (height * height)
        return "your BMI is : \(getBMI), you are a fucking fatass, your suggested weight is: \(suggestedWeight)"
    } else if getBMI > 25 && getBMI <= 30  {
        suggestedWeight = 25 * (height * height)
        return "your BMI is : \(getBMI), you are overweight bro, your suggested weight is: \(suggestedWeight)"
    } else if getBMI >= 18.5 && getBMI <= 25 {
        return "your BMI is : \(getBMI), you are fit bro, congralts"
    } else {
        suggestedWeight = 18.5 * (height * height)
        return "your BMI is : \(getBMI), you are underweight eat some more, your suggested weight is: \(suggestedWeight)"
    }
}

print("BMI calculator")
print(calculateBMI(height: 1.75, weight: 90.0))
print() // for space purpose

/// introduction to LOOP - SECTION 5
// FOR loop

//var sum = 0
//let arrayOfNumber = [1,2,3,4,5,6,7,8,9,10]
//for i in arrayOfNumber {
//    sum += i
//}
//print("total sum is: \(sum)")

//for i in 1..<10 {
//    print(i)
//}

//for i in 0..<10 where i % 2 == 0 {
//    print(i)
//}

// challenge beer song loop 99 times and last one no beer

var lyric = ""
var newLyric = ""
func beerSong(_ maxBeer: Int) -> String {
    for i in 0...maxBeer {
        
        if i == maxBeer {
            //print("no more beer on the wall\n")
            newLyric = "no more beer on the wall\n"
        } else {
            //print("beer on the wall \(maxBeer - i), take one, and now \(maxBeer - i - 1) beer on the wall\n")
            newLyric = "beers on the wall \(maxBeer - i), take one, and now \(maxBeer - i - 1) beer on the wall\n"
        }
        lyric += newLyric
    }
    return lyric
}

//print(beerSong(10))

/// CHALLENGE PRINT FIBONANCI NUMBER

func printFibonanciNumber(maxNumber:Int) -> String {
    var array = [0,0,1]
    for i in 3...maxNumber where i < 100 {
        let fibo = array[i-2] + array[i-1]
        array.append(fibo)
    }
    return "the fibonanci number up to n = \(maxNumber) is\n\(array)"
}
print(printFibonanciNumber(maxNumber: 15))

