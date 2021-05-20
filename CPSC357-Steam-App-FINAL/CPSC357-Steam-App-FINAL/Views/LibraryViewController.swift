//
//  LibraryViewController.swift
//  CPSC357-Steam-App-FINAL
//
//  Created by Kelsey Holland on 4/29/21.
//

import Foundation
import UIKit




class LibraryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
   

    
    @IBOutlet var LibraryViewController: UIView!
    
    @IBOutlet weak var LibraryLabel: UILabel!
    @IBOutlet weak var LibraryVerticalStackController: UIStackView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    @IBOutlet weak var testLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    /*
    var gameslibrary = [GamesLibrary](){
        didSet{
            DispatchQueue.main.async{
                self.tableView.reloadData()
                //self.navigationItem.title = "\(self.gameslibrary.count) Games Found"
            }
        }
    }
    
    */
    //var gamesArrayLibrary: [Game] = []
    
    
    let searchController = UISearchController()
    var gamesArrayLibrary: [Game] {
        get {
            return (self.tabBarController!.viewControllers![0] as! ViewController).gamesArray
        }
        set {
            (self.tabBarController!.viewControllers![0] as! ViewController).gamesArray = gamesArrayLibrary
        }
    }
    
//
//
//    var tableRowTitle: [String] = ["Game01", "Game02", "Game03", "Game04"]
    var tableRowTitle: [String] = []
    var filteredLibrary : [Game] = []
    var filteredTitles: [String] = []
    let gameImage = [UIColor.blue, UIColor.yellow, UIColor.green, UIColor.red]
    
    let rowCellReuseID = "cell"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //initSearchContoller()
        // Do any additional setup after loading the view.
       // self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseID )
        /*let gameRequest = GameRequest(steamID64: "76561198184936923")
        gameRequest.getGames { [weak self] result in
            switch result{
            case.failure(let error):
                print("ERROR")
                print(error)
            case.success(let games):
                self?.gameslibrary = games
            }
        }
        for game in gameslibrary {
            print("Game ID: \(game.games[5].appid)")
//            print("Game ID: \(game.name)")
            testLabel.text = ("Game ID: \(game.games[5].appid)")
        
            
        }*/
        
        
       // initsearchBar
        createGamesData()
        setUpRows()
        filteredTitles = tableRowTitle
        
        
        
        searchBar.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        //searchBar.delegate = self
        
        
        //view.backgroundColor = .blue
    }
    

    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredTitles = []
        if searchText == ""
        {
            filteredTitles = tableRowTitle
        }
        else {
            for item in tableRowTitle {
                if item.lowercased().contains(searchText.lowercased())
                {
                    filteredTitles.append(item)
                }
            }
        }
        self.tableView.reloadData()
    }
    
   // reference:   https://www.youtube.com/watch?v=iH67DkBx9Jc&ab_channel=AjayGandechaAjayGandecha
    
    
//    //reference : https://www.youtube.com/watch?v=DAHG0orOxKo&ab_channel=CodeWithCal
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int {
        
    
       // return self.tableRowTitle.count
        return self.filteredTitles.count


    }

    
    //cell for each row, customizations for each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath : IndexPath) -> UITableViewCell {
        
        let cell:CustomLibraryCell = self.tableView.dequeueReusableCell(withIdentifier: rowCellReuseID) as! CustomLibraryCell
        
//        let searchedGames : Game!
//        if (searchController.isActive)
//        {
//            searchedGames = filteredLibrary[indexPath.row]
//        }
//        else {
//            searchedGames = gamesArrayLibrary[indexPath.row]
//        }
//
//
        
        
        cell.customLibraryView.backgroundColor = self.gameImage[indexPath.row]
        cell.customLibraryCellLabel.text = self.filteredTitles[indexPath.row]
        
       
        return cell
    }
    
    
    //action when button is tapped
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("selected row : \(indexPath.row)")
    }
    
    
    
    
    

/*
extension LibraryViewController : UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
        guard let searchBarText = searchBar.text else {return}
        let gameRequest = GameRequest(steamID64: "76561198184936923")
        gameRequest.getGames {[weak self] result in
            switch result{
            case .failure(let error):
                print(error)
            case .success(let games):
                self?.gameslibrary = games
            }
        }
    }
}
*/

    func createGamesData(){
        
        
        
    }


    func setUpRows(){
        for (index, element) in gamesArrayLibrary.enumerated()
        {
            let tempGame : Game = element
            let tempTitle : String = tempGame.gameName
            tableRowTitle.append(tempTitle)
            
            
            
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
 
        
        if segue.identifier == "ShowGameLibraryInfo"{
            let indexPath = self.tableView.indexPathForSelectedRow
            let tempGame = gamesArrayLibrary[indexPath!.row]
            let destination = segue.destination as! GameInfoView
            destination.gameDetail = tempGame
        }
        
      
    }
    
    
    
    
}
