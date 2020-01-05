//
//  Game.swift
//  tic_tac_toe
//
//  Created by Abbey Averill on 3/29/19.
//  Copyright © 2019 Erin Averill. All rights reserved.
//

import UIKit

class Game {
    var board: [[Int]]!
    var turns: Int!
    init(){
        self.reset()
    }
    func reset() {
        self.board = [[0,0,0],[0,0,0],[0,0,0]]
        self.turns = 0
    }
    func moveByPlayer(player: Int, space: Int) {
        let spaceDictionary = [1:(0,0),2:(0,1),3:(0,2),4:(1,0),5:(1,1),6:(1,2),7:(2,0),8:(2,1),9:(2,2)]
        if let spaceTuple = spaceDictionary[space] {
            self.board[spaceTuple.0][spaceTuple.1] = player
        }
//        print(self.board)
        self.turns = self.turns + 1
    }
    func checkForWin(spotTaken: Int) -> String {
        let SpotWinsDictionary = [1:[1,4,7],2:[4,2],3:[4,8,3],4:[1,5],5:[2,5,7,8],6:[3,5],7:[1,6,8],8:[2,6],9:[3,7,6]]
        let WinningSpaces = [1:[(0,0),(1,0),(2,0)],2:[(0,1),(1,1),(2,1)],3:[(0,2),(1,2),(2,2)],4:[(0,0),(0,1),(0,2)],5:[(1,0),(1,1),(1,2)],6:[(2,0),(2,1),(2,2)],7:[(0,0),(1,1),(2,2)],8:[(0,2),(1,1),(2,0)]]
        if let possibilities  = SpotWinsDictionary[spotTaken]{
            for possibility in possibilities {
                if let spaces = WinningSpaces[possibility] {
                    let firstspace = spaces[0]
                    let secondspace = spaces[1]
                    let thirdspace = spaces[2]
                    if self.board[firstspace.0][firstspace.1] != 0 && self.board[firstspace.0][firstspace.1] == self.board[secondspace.0][secondspace.1] && self.board[secondspace.0][secondspace.1] == self.board[thirdspace.0][thirdspace.1] {
                        print ("winner")
                        return "win"
                    }
                }
            }
            if self.turns >= 9 {
                print("tie")
                return "tie"
            }
        }
        return "play"
    }
}
