//
//  ViewController.swift
//  CPSC357-Steam-App-FINAL
//
//  Created by Kelsey Holland on 4/26/21.
//

import UIKit
import Foundation
import Charts



//View Controller Will be Main menu/ home menu 



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,  ChartViewDelegate{

   

    @IBOutlet var mainMenuViewController: UIView!
    
    @IBOutlet weak var MainMenuStack: UIStackView!
    
    //@IBOutlet weak var barChart: BarChartView!
    
    @IBOutlet weak var tableView: UITableView!
    
    //@IBOutlet weak var collectionView: UICollectionView!
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){}

    
    //--------------------------------------------------
    //var gamesLibrary : [Game] = []
    //--------------------------------------------------
    
    
    //var storedGames = StorageHandler()
    var gamesLibrary = GameLibrary(gamesLibrary: [])
    var gamesArray : [Game] = []
    
    
    var filteredGamesArray : [Game] = []
//    let formatter = DateFormatter()
//    formatter.dateFormat = "yyyy/MM/dd HH"
//    let date1 = formatter.date(from: "2016/10/08 15")
//    let date2 = formatter.date(from: "2020/11/09 12")
//
//    var gamesLibrary = [Game]()
//
//    let game1 = Game(gameName: "Hello", total_playtime: 100, last_month_playtime: 20, date_last_played: date2!, date_added: date1!)
    
    var tableRowTitle: [String] = []
    
//    let tableRowTitle: [String] = ["Game01", "Game02", "Game03", "Game04"]
    //let gameImage = [UIColor.blue, UIColor.yellow, UIColor.green, UIColor.red, UIColor.orange]
    let collectionViewTitle : [String] = ["Playtime this week", "Total Playtime"]
    let rowCellReuseID = "cell"
//    let collectionCellReuseID = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //gamesLibrary.getStorage()
       // self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseID )
        createGamesData()
        gamesLibrary.updateStorage(inputArray : gamesArray)
        gamesArray = gamesLibrary.gamesLibrary
        setUpRows()
        
        tableView.delegate = self
        tableView.dataSource = self
       
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int {
        return self.tableRowTitle.count

    }
    
    //cell for each row, customizations for each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath : IndexPath) -> UITableViewCell {
        
        let cell:CustomCell = self.tableView.dequeueReusableCell(withIdentifier: rowCellReuseID) as! CustomCell
        
        //cell.customView.backgroundColor = self.gameImage[indexPath.row]
        
        var imageName = self.tableRowTitle[indexPath.row].lowercased()
        imageName.append(".jpg")
        if let newImage = UIImage(named : imageName){
            cell.customImage.image = newImage
        }
        else {
            cell.customImage.image = UIImage(named : "webkinz.jpg")
        }
        
        
        cell.customCellLabel.text = self.tableRowTitle[indexPath.row]
        //cell.textLabel?.text = self.tableRowTitle[indexPath.row]
        
        return cell
        
    }
    
    //action when button is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("selected row : \(indexPath.row)")
        
    }
    
    
    
    //ref : https://stackoverflow.com/questions/47572487/pass-array-from-tableview-to-tableview?noredirect=1&lq=1
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
//        if segue.identifier == "2" {
//            //let tempGameArray : [Game] = gamesArray
//
//
//            let destination = segue.destination as! LibraryViewController
//            for (index, element) in gamesArray.enumerated()
//            {
//                let tempGame : Game = element
//                //let tempTitle : String = tempGame.gameName
//                destination.gamesArrayLibrary.append(tempGame)
//
//
//
//            }
//
//            //destination.gamesArrayLibrary = gamesArray
//        }
//
        
        if segue.identifier == "ShowGameInfo"{
            let indexPath = self.tableView.indexPathForSelectedRow
            let tempGame = gamesArray[indexPath!.row]
            let destination = segue.destination as! GameInfoView
            destination.gameDetail = tempGame
        }
        
        if segue.identifier == "Settings"{
           // let indexPath = self.tableView.indexPathForSelectedRow
            //let tempGame = gamesArray[indexPath!.row]
            
            gamesLibrary.updateStorage(inputArray: gamesArray)
            let destination = segue.destination as! SettingsView
            destination.gamesArray = gamesArray
            destination.gamesLibrary = gamesLibrary
        }
        
        
//
//        let indexPath = self.tableView.indexPathForSelectedRow
//        let tempGame = gamesArray[indexPath!.row]
//        let destination = segue.destination as! GameInfoView
//        destination.gameDetail = tempGame
      
    }
    
    
    
    
    func createGamesData()
    {
        //gamesLibrary.addTempGames()
        //gamesLibrary.updateStorage()
        gamesArray = gamesLibrary.getStorage()
        if (gamesArray.isEmpty == true) {
            gamesLibrary.addTempGames()
            gamesLibrary.getStorage()
        }
        
    }
    
    //--------------------------------------------------
    func setUpRows(){
        
        var count : Int = 0
        
        
        
        
        gamesArray =  gamesArray.sorted(by: {$0.last_month_playtime < $1.last_month_playtime})
        
        for (index, element) in gamesArray.enumerated()
        {
            let tempGame : Game = element
            
            if count < 5 {
                let tempTitle : String = tempGame.gameName
                tableRowTitle.append(tempTitle)
                count += 1
            }
        }
        
        
        
        
//        for (index, element) in gamesArray.enumerated()
//        {
//            let tempGame : Game = element
//            let tempTitle : String = tempGame.gameName
//            tableRowTitle.append(tempTitle)
//
//
//
//        }
//
    
        
    }
}

    
    
    
    //Pie Chart
    //total_playtime
    //last_month_playtime
    //last_week_playtime
    
    
    //
    //        let indexPath = self.tableView.indexPathForSelectedRow
    //        let tempGame = gamesArray[indexPath!.row]
    //        let destination = segue.destination as! GameInfoView
    //        destination.gameDetail = tempGame
          

        
        
        
        
        //--------------------------------------------------
        
    //    struct GamesDetail: Decodable{
    //        var appid: Int
    //        var playtime_forever: Int
    //        var playtime_windows_forever: Int
    //        var playtime_mac_forever: Int
    //        var playtime_linux_forever: Int
    //
        
        //--------------------------------------------------
    //    func createGamesData(){
    //        let formatter = DateFormatter()
    //        formatter.dateFormat = "yyyy/MM/dd HH"
    //
    //
    //        let date1 = formatter.date(from: "2020/10/08 15")
    //        let date2 = formatter.date(from: "2016/11/09 12")
    //        let date3 = formatter.date(from: "2021/12/08 11")
    //        let date4 = formatter.date(from: "2017/03/09 3")
    //        let date5 = formatter.date(from: "2020/01/08 11")
    //        let date6 = formatter.date(from: "2019/03/10 3")
    //        let date7 = formatter.date(from: "2020/02/03 8")
    //        let date8 = formatter.date(from: "2019/03/21 3")
    //
    //
    //
    //        var Oblivion = Game(gameName: "Oblivion", total_playtime: 100, last_month_playtime: 3, last_week_playtime: 2, date_last_played: date1!, date_added: date2!)
    //
    //        var Morrowind = Game(gameName: "Morrowind", total_playtime: 13, last_month_playtime: 4, last_week_playtime: 3, date_last_played: date3!, date_added: date4!)
    //
    //        var Portal = Game(gameName: "Portal", total_playtime: 12, last_month_playtime: 5, last_week_playtime: 3, date_last_played: date5!, date_added: date6!)
    //
    //        var MassEffect = Game(gameName: "MassEffect", total_playtime: 15, last_month_playtime: 5, last_week_playtime: 3, date_last_played: date7!, date_added: date8!)
    //
    //        gamesLibrary.append(Oblivion)
    //        gamesLibrary.append(Morrowind)
    //        gamesLibrary.append(Portal)
    //        gamesLibrary.append(MassEffect)
    //    }
        
    
    
    
    
    
    
    
    
    
    
    //number of cells
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) ->Int {
//        return self.collectionViewTitle.count
//    }
    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath : IndexPath) -> UICollectionViewCell {
//
//
//        let cell:CustomCollectionCell = self.collectionView.dequeueReusableCell(withReuseIdentifier: collectionCellReuseID, for: indexPath as IndexPath) as! CustomCollectionCell
//        cell.customLabel.text = self.collectionViewTitle[indexPath.row]
//        cell.backgroundColor = UIColor.orange
//
//        return cell
//    }
    
    //on click
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
//
//        print("Selected :  \(indexPath.item)")
//    }
//
//    func updateChartData(){
//
//        let chartDataSet = BarChartDataSet(values: numberDataEntries, label: nil)
//        let chartData = BarChartData(dataSet: chartDataSet)
//       // let colors = [UIColor(named:"data1Color")]
//       // chartDataSet.colors = colors as! [NSUIColor]
//
//        barChart.data = chartData
//
//    }
//
//
    
    
    


//Sources :
//https://stackoverflow.com/questions/33234180/uitableview-example-for-swift
//https://stackoverflow.com/questions/31735228/how-to-make-a-simple-collection-view-with-swift
