//
//  StorageHandler.swift
//  CPSC357-Steam-App-FINAL
//
//  Created by cpsc on 5/14/21.
//

import Foundation

struct StorageHandler{
    var defaultStorage: UserDefaults = UserDefaults.standard
    var defaultKey = "GameStorage"


    //Updates the Default Storage with a passed in Dictionary
    mutating func setStorage(input: [Game]){
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(input){
            defaultStorage.set(encoded, forKey: defaultKey)
        }
        
        
        
        
//        let tempArray = input
//        let encodedData : Data = NSKeyedArchiver.archivedData(withRootObject: tempArray)
//        defaultStorage.set(tempArray, forKey: self.defaultKey)
    }
    
    //Accesses the stored dictionary
    mutating func getStorage() -> [Game] {
//        if var storedGames = def defaultStorage.dictionary(forKey: self.defaultKey) as? [Game] {
//            return storedGames
//        if let decoded = defaultStorage.data(forKey: defaultKey){
//            let decodedGames = NSKeyedUnarchiver.unarchiveObject(with : decoded ) as! [Game]
//            return decodedGames
//
        if let savedGame = defaultStorage.object(forKey: defaultKey) as? Data{
            let decoder = JSONDecoder()
            let loadedGames = (try? decoder.decode([Game].self, from: savedGame))!
            return loadedGames
        }else{
            return []
        }
    }
}
    //Accesses the Names for the games stored in Default Storage
//    mutating func getKeyArray(input: Dictionary<String , Game>) -> [String] {
//        var newArray : [String] = []
//        for key in input.keys{
//            newArray.append(key)
//        }
//        return newArray
//    }
//
//}



//
//import Foundation
//
//struct StorageHandler{
//    var defaultStorage: UserDefaults = UserDefaults.standard
//    var defaultKey = "GameStorage"
//
//
//    //Updates the Default Storage with a passed in Dictionary
//    mutating func setStorage(input: Dictionary<String, Game>){
//        var tempDictionary = input
//        defaultStorage.set(tempDictionary, forKey: self.defaultKey)
//    }
//
//    //Accesses the stored dictionary
//    mutating func getStorage() -> Dictionary<String, Game> {
//        if var storedGames = defaultStorage.dictionary(forKey: self.defaultKey) as? [String : Game] {
//            return storedGames
//        }else{
//            return [:]
//        }
//    }
//
//    //Accesses the Names for the games stored in Default Storage
//    mutating func getKeyArray(input: Dictionary<String , Game>) -> [String] {
//        var newArray : [String] = []
//        for key in input.keys{
//            newArray.append(key)
//        }
//        return newArray
//    }
//
//}
