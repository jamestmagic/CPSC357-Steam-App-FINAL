//
//  ViewController.swift
//  CPSC357-Steam-App-FINAL
//
//  Created by Kelsey Holland on 4/26/21.
//

import UIKit
import Foundation



//View Controller Will be Main menu/ home menu 



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate{

   

    @IBOutlet var mainMenuViewController: UIView!
    
    @IBOutlet weak var MainMenuStack: UIStackView!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){}

    
    
    
    
    
    
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd HH"
    let date1 = formatter.date(from: "2016/10/08 15")
    let date2 = formatter.date(from: "2020/11/09 12")
    
    var gamesLibrary = [Game]()
    
    let game1 = Game(gameName: "Hello", total_playtime: 100, last_month_playtime: 20, date_last_played: date2!, date_added: date1!)
    
    
    
    
    
    let tableRowTitle: [String] = ["Game01", "Game02", "Game03", "Game04"]
    let gameImage = [UIColor.blue, UIColor.yellow, UIColor.green, UIColor.red]
    
    
    
    let collectionViewTitle : [String] = ["Playtime this week", "Total Playtime"]
    
    
    
   
    let rowCellReuseID = "cell"
    let collectionCellReuseID = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseID )
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        //view.backgroundColor = .blue
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int {
        
        return self.tableRowTitle.count

    }

    
    //cell for each row, customizations for each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath : IndexPath) -> UITableViewCell {
        
        let cell:CustomCell = self.tableView.dequeueReusableCell(withIdentifier: rowCellReuseID) as! CustomCell
        
        cell.customView.backgroundColor = self.gameImage[indexPath.row]
        cell.customCellLabel.text = self.tableRowTitle[indexPath.row]
        
        
        //cell.textLabel?.text = self.tableRowTitle[indexPath.row]
        
        return cell
        
    }
    
    
    //action when button is tapped
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("selected row : \(indexPath.row)")
    }
    
    
    //number of cells
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) ->Int {
        return self.collectionViewTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath : IndexPath) -> UICollectionViewCell {
       
            
        let cell:CustomCollectionCell = self.collectionView.dequeueReusableCell(withReuseIdentifier: collectionCellReuseID, for: indexPath as IndexPath) as! CustomCollectionCell
        cell.customLabel.text = self.collectionViewTitle[indexPath.row]
        cell.backgroundColor = UIColor.orange
    
        
        
        return cell
    }
    
    
    
    
    
    
    
    //on click
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        
        print("Selected :  \(indexPath.item)")
        
        
    }
    
    

}

//Sources :
//https://stackoverflow.com/questions/33234180/uitableview-example-for-swift
//https://stackoverflow.com/questions/31735228/how-to-make-a-simple-collection-view-with-swift
