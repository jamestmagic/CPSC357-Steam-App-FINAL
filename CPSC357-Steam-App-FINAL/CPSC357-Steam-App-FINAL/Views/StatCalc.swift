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
    var last_week_playtime: Int
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


struct GameLibrary {
    var gamesLibrary : [Game]
    //var gamesStorage  = StorageHandler()
    
    
    mutating func addTempGames(){
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH"
        
        
        let date1 = formatter.date(from: "2020/10/08 15")
        let date2 = formatter.date(from: "2016/11/09 12")
        let date3 = formatter.date(from: "2021/12/08 11")
        let date4 = formatter.date(from: "2017/03/09 3")
        let date5 = formatter.date(from: "2020/01/08 11")
        let date6 = formatter.date(from: "2019/03/10 3")
        let date7 = formatter.date(from: "2020/02/03 8")
        let date8 = formatter.date(from: "2019/03/21 3")
        let date9 = formatter.date(from: "2015/02/03 3")
        let date10 = formatter.date(from: "2015/03/21 3")
        let date11 = formatter.date(from: "2018/07/03 3")
        let date12 = formatter.date(from: "2020/04/21 3")
        
        
        let Oblivion = Game(gameName: "Oblivion", total_playtime: 100, last_month_playtime: 3, last_week_playtime: 2, date_last_played: date1!, date_added: date2!)
       
        let Morrowind = Game(gameName: "Morrowind", total_playtime: 13, last_month_playtime: 4, last_week_playtime: 3, date_last_played: date3!, date_added: date4!)
       
        let Portal = Game(gameName: "Portal", total_playtime: 12, last_month_playtime: 5, last_week_playtime: 3, date_last_played: date5!, date_added: date6!)
        
        let MassEffect = Game(gameName: "MassEffect", total_playtime: 15, last_month_playtime: 5, last_week_playtime: 3, date_last_played: date7!, date_added: date8!)
        
        let Portal2 = Game(gameName: "Portal2", total_playtime: 10, last_month_playtime: 2, last_week_playtime: 1, date_last_played: date9!, date_added: date10!)
     
        let ElderScrollsOnline = Game(gameName: "ElderScrollsOnline", total_playtime: 50, last_month_playtime: 13, last_week_playtime: 4, date_last_played: date11!, date_added: date12!)
        
        gamesLibrary.append(Oblivion)
        gamesLibrary.append(Morrowind)
        gamesLibrary.append(Portal)
        gamesLibrary.append(MassEffect)
        gamesLibrary.append(Portal2)
        gamesLibrary.append(ElderScrollsOnline)
        
        
        
        
    }
    
    mutating func updateStorage()
    {
       // var tempKeys : [String] = []
       // var gameValues : [Game] = []
        var gamesDictionary : Dictionary<String, Game> = [:]
        for (index, element) in gamesLibrary.enumerated(){
            var tempGame : Game  = element
            var tempKey = tempGame.gameName
            
            gamesDictionary.updateValue(tempGame, forKey: tempKey)
            
        }
        StorageHandler.setStorage(input : gamesDictionary)
    }
    mutating func getStorage() -> [Game]
    {
       // var tempGamesArray : [Game] = []
        gamesLibrary = []
        var gamesDictionary = StorageHandler.getStorage()
        for value in gamesDictionary.values
        {
            gamesLibrary.append(value)
            
        }
        return gamesLibrary
       
        
    }
    
    
    
    
}




/*
let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd HH"
let date1 = formatter.date(from: "2016/10/08 15")
let date2 = formatter.date(from: "2020/11/09 12")

let game = Game(gameName: "Hello", total_playtime: 100, last_month_playtime: 20, date_last_played: date2!, date_added: date1!)

*/


