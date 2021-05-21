//
//  StorageHandler.swift
//  CPSC357-Steam-App-FINAL
//
//  Created by cpsc on 5/14/21.
//

import Foundation

struct StorageHandler{
    static var defaultStorage: UserDefaults = UserDefaults.standard
    static var defaultKey = "GameStorage"


    //Updates the Default Storage with a passed in Dictionary
    static func setStorage(input: Dictionary<String, Game>){
        var tempDictionary = input
        defaultStorage.set(tempDictionary, forKey: self.defaultKey)
    }
    
    //Accesses the stored dictionary
    static func getStorage() -> Dictionary<String, Game> {
        if var storedGames = defaultStorage.dictionary(forKey: self.defaultKey) as? [String : Game] {
            return storedGames
        }else{
            return [:]
        }
    }

    //Accesses the Names for the games stored in Default Storage
    static func getKeyArray(input: Dictionary<String , Game>) -> [String] {
        var newArray : [String] = []
        for key in input.keys{
            newArray.append(key)
        }
        return newArray
    }

}
