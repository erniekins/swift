import UIKit
// 1
//for i in 1...255 {
//    print(i)
//}
//

//2
var i = 1
//while i < 256 {
//    print(i)
//    i = i + 1
//}

//3
//while i <= 100 {
//    if i % 3 == 0 {
//        if i % 5 == 0 {
//            i += 1
//        }
//        else {
//            print(i)
//            i = i + 1
//        }
//    }
//    if i % 5 == 0 {
//        print(i)
//        i += 1
//    }
//    else {
//        i += 1
//    }
//}

//4

while i <= 100 {
    if i % 3 == 0 {
        if i % 5 == 0 {
            print("FIzzBuzz")
            i += 1
        }
        else {
            print("Fizz")
            i = i + 1
        }
    }
    if i % 5 == 0 {
        print("Buzz")
        i += 1
    }
    else {
        print(i)
        i += 1
    }
}
