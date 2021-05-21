//
//  SettingsView.swift
//  CPSC357-Steam-App-FINAL
//
//  Created by Kelsey Holland on 4/29/21.
//

import UIKit




 class SettingsView: UIViewController {

    @IBOutlet weak var settingsViewController: UIView!
    
    @IBOutlet weak var settingsStackViewController: UIStackView!
    
    
    
    var gamesLibrary = GameLibrary(gamesLibrary: [])
    var gamesArray : [Game]!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseID )
    
        
        //view.backgroundColor = .blue
    }
    
    
    
    
}




