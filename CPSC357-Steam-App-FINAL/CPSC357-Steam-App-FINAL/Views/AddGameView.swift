//
//  AddGameView.swift
//  CPSC357-Steam-App-FINAL
//
//  Created by Kelsey Holland on 5/20/21.
//

import Foundation
import UIKit



class AddGameView: UIViewController{
    
    
//    var gamesArrayLibrary: [Game] {
//        get {
//            return (self.tabBarController!.viewControllers![0] as! ViewController).gamesArray
//        }
//        set {
//            (self.tabBarController!.viewControllers![0] as! ViewController).gamesArray = gamesArrayLibrary
//        }
//    }
    var gamesArrayLibrary = GameLibrary(gamesLibrary: [])
    var gamesArray : [Game] = []
    
    
    //var viewC : ViewController
    @IBOutlet weak var userTextFeild: UITextField!
    @IBOutlet weak var userIntFeild: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGamesData()
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//
//
//        viewC.gamesArray = viewC.gamesLibrary.getStorage()
//
//
//    }
    
    
    func addGame(name: String, total: Int){
        var tempGame: Game = Game(gameName: name, total_playtime: total, last_month_playtime: 0, last_week_playtime: 0, date_last_played: Date(), date_added: Date())
        gamesArray.append(tempGame)
        gamesArrayLibrary.updateStorage(inputArray: gamesArray)
       
        
    }
    
    @IBAction func buttonPress(_ sender: Any) {
        if (userTextFeild.hasText == true) && (userIntFeild.hasText == true)
        {
            var tempString : String = userTextFeild.text! ?? "UntitledGame"
            var tempInt : Int = Int(userIntFeild.text!) ?? 0
            addGame(name: tempString, total: tempInt)
        }
        
    }
    
    
    
    
    func createGamesData()
    {
        //gamesLibrary.addTempGames()
        //gamesLibrary.updateStorage()
        gamesArray = gamesArrayLibrary.getStorage()
//        if (gamesArray.isEmpty == true) {
//            gamesArrayLibrary.addTempGames()
//            gamesArrayLibrary.getStorage()
//        }
        
    }
    
    
}
