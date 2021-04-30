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
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let tableRowTitle: [String] = ["Game01", "Game02", "Game03", "Game04"]
    let gameImage = [UIColor.blue, UIColor.yellow, UIColor.green, UIColor.red]
    
    let rowCellReuseID = "cell"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseID )
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        //view.backgroundColor = .blue
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int {
        
        return self.tableRowTitle.count

    }

    
    //cell for each row, customizations for each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath : IndexPath) -> UITableViewCell {
        
        let cell:CustomLibraryCell = self.tableView.dequeueReusableCell(withIdentifier: rowCellReuseID) as! CustomLibraryCell
        
        cell.customLibraryView.backgroundColor = self.gameImage[indexPath.row]
        cell.customLibraryCellLabel.text = self.tableRowTitle[indexPath.row]
        
        
        //cell.textLabel?.text = self.tableRowTitle[indexPath.row]
        
        return cell
        
    }
    
    
    //action when button is tapped
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("selected row : \(indexPath.row)")
    }
    
    
}


