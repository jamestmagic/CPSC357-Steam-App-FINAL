//
//  GameInfoView.swift
//  CPSC357-Steam-App-FINAL
//
//  Created by Kelsey Holland on 4/29/21.
//

import Foundation
import UIKit
import Charts





class GameInfoView : UIViewController, ChartViewDelegate {
    @IBOutlet var GameViewController: UIView!
    @IBOutlet weak var GameStackView: UIStackView!
    @IBOutlet weak var gameTitleLabel: UILabel!
    @IBOutlet weak var placeholderView01: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var lineChart: LineChartView!
    
    
    
    var gameDetail : Game!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpGameInfo()
        lineChart.delegate = self
        linechartView()
       // self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseID )
    }
    
    
    func setUpGameInfo()
    {
        gameTitleLabel.text = gameDetail.gameName
        
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//        lineChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
//        //lineChart.center = view.center
//        view.addSubview(lineChart)
//
//        var ourEntries = [ChartDataEntry]()
//
//        //create sample data set
//        for x in 0..<5 {
//            ourEntries.append(ChartDataEntry(x: Double(x), y: Double(x)))
//        }
//
//        let ourDataSet = LineChartDataSet(entries: ourEntries)
//        ourDataSet.colors = ChartColorTemplates.joyful()
//
//        let data = LineChartData(dataSet: ourDataSet)
//        lineChart.data = data
//    }
    
    
    func linechartView() {
        //super.viewDidLayoutSubviews()
        
        lineChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        //lineChart.center = view.center
        //view.view
        
        
        var ourEntries = [ChartDataEntry]()
        
        //create sample data set
        
        
        //gameDetail.total_playtime
        //gameDetail.last_week_playtime
        //x axis starts on date_added and end on current date (var currentDate = Date())
        //y axis is playtime
        
        for x in 0..<5 {
            ourEntries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        }
        
        let ourDataSet = LineChartDataSet(entries: ourEntries)
        ourDataSet.colors = ChartColorTemplates.joyful()
        
        let data = LineChartData(dataSet: ourDataSet)
        lineChart.data = data
    }
    
    
    
}
