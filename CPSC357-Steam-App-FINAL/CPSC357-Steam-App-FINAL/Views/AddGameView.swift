//
//  AddGameView.swift
//  CPSC357-Steam-App-FINAL
//
//  Created by Kelsey Holland on 5/20/21.
//

import Foundation
import UIKit



class AddGameView: UIViewController{
    
    
    var gamesArrayLibrary: [Game] {
        get {
            return (self.tabBarController!.viewControllers![0] as! ViewController).gamesArray
        }
        set {
            (self.tabBarController!.viewControllers![0] as! ViewController).gamesArray = gamesArrayLibrary
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    func addGame(name: String, total: Int){
        var tempGame: Game = Game(gameName: name, total_playtime: total, last_month_playtime: 0, last_week_playtime: 0, date_last_played: Date(), date_added: Date())
        gamesArrayLibrary.append(tempGame)
    }
    
    
    
}
