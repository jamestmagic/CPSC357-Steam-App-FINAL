//
//  GameInfoView.swift
//  CPSC357-Steam-App-FINAL
//
//  Created by Kelsey Holland on 4/29/21.
//

import Foundation

import UIKit





class GameInfoView : UIViewController {
    
    
    @IBOutlet var GameViewController: UIView!
    @IBOutlet weak var GameStackView: UIStackView!
    
    
    @IBOutlet weak var gameTitleLabel: UILabel!
    
    
    @IBOutlet weak var placeholderView01: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseID )
        
     
        
        
        //view.backgroundColor = .blue
    }
    
    
    
    
}
