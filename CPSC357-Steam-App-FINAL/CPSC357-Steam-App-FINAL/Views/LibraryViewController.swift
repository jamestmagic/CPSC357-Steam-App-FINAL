//
//  LibraryViewController.swift
//  CPSC357-Steam-App-FINAL
//
//  Created by Kelsey Holland on 4/29/21.
//

import Foundation
import UIKit




class LibraryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet var LibraryViewController: UIView!
    
    @IBOutlet weak var LibraryLabel: UILabel!
    @IBOutlet weak var LibraryVerticalStackController: UIStackView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    @IBOutlet weak var testLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
<<<<<<< HEAD
    var gameslibrary = [GamesDetail](){
        didSet{
            DispatchQueue.main.async{
                self.tableView.reloadData()
                //self.navigationItem.title = "\(self.gameslibrary.count) Games Found"
            }
        }
    }
    
    
=======
>>>>>>> 035a17d5e5f76f0a45d09f07d4db85e7427a0e53
    
    

    
    let tableRowTitle: [String] = ["Game01", "Game02", "Game03", "Game04"]
    let gameImage = [UIColor.blue, UIColor.yellow, UIColor.green, UIColor.red]
    
    let rowCellReuseID = "cell"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseID )
        let gameRequest = GameRequest(steamID64: "76561198184936923")
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
<<<<<<< HEAD
            print("Game ID: \(game.appid)")
=======
//            print("Game ID: \(game.name)")
            testLabel.text = ("Game ID: \(game.name)")
        
            
>>>>>>> 035a17d5e5f76f0a45d09f07d4db85e7427a0e53
        }
        tableView.delegate = self
        tableView.dataSource = self
        //searchBar.delegate = self
        
        
        //view.backgroundColor = .blue
    }
    
    
    var gameslibrary = [GamesDetail](){
        didSet{
            DispatchQueue.main.async{
                self.tableView.reloadData()
                self.navigationItem.title = "\(self.gameslibrary.count) Games Found"
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int {
        
        return self.gameslibrary.count

    }

    
    //cell for each row, customizations for each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath : IndexPath) -> UITableViewCell {
        
        let cell:CustomLibraryCell = self.tableView.dequeueReusableCell(withIdentifier: rowCellReuseID) as! CustomLibraryCell
        
        let game = gameslibrary[indexPath.row]
        //cell.customLibraryView.backgroundColor = self.gameImage[indexPath.row]
        //cell.customLibraryCellLabel.text = game.appid
        
        
        cell.textLabel?.text = String(game.appid)
        cell.detailTextLabel?.text = String(game.playtime_forever)
        return cell
    }
    
    
    //action when button is tapped
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("selected row : \(indexPath.row)")
    }
    
    
    
    
    
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

