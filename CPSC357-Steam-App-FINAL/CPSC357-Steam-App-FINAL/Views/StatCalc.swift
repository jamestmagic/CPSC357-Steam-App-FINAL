//
//  StatCalc.swift
//  CPSC357-Steam-App-FINAL
//
//  Created by cpsc on 5/13/21.
//

import Foundation


struct Game{
    var gameName: String //name of the game
    var total_playtime: Int //how many hours were played by user in total
    var last_month_playtime: Int //how many hours were played by user within the last month
    var date_last_played: Date //date the game was last played by user
    var date_added: Date //intial date when user added/purchased game to their library
    
    func calcDownTime() -> Int{ //calculates how long it has been since game was played
        let diffComponents = Calendar.current.dateComponents([.hour], from: date_last_played, to: Date())
        guard let hours = diffComponents.hour else { return 0 }
        return (hours)
    }
    
    func calcTimeAdded() -> Int{ //calculates how long the game has been owned by user
        let diffComponents = Calendar.current.dateComponents([.hour], from: date_added, to: Date())
        guard let hours = diffComponents.hour else { return 0 }
        return (hours)
    }
}

/*
let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd HH"
let date1 = formatter.date(from: "2016/10/08 15")
let date2 = formatter.date(from: "2020/11/09 12")

let game = Game(gameName: "Hello", total_playtime: 100, last_month_playtime: 20, date_last_played: date2!, date_added: date1!)

*/
