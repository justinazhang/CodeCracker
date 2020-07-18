//
//  SaveLoad.swift
//  Code Cracker
//
//  Created by Justin Zhang on 7/4/20.
//  Copyright © 2020 Roaz. All rights reserved.
//

import Foundation

var questionsAnswereddata = [Int]()
var questionsAnsweredterm = [Int]()
var questionsAnsweredData = [Int]()

class Save {
    
    let defaults = UserDefaults.standard
    func saveArray() {
           defaults.set(questionsAnswereddata, forKey: "saveddata")
           defaults.set(questionsAnsweredterm, forKey: "savedterm")
           defaults.set(questionsAnsweredData, forKey: "savedData")
    }
    
    func loadArray() {
        questionsAnswereddata = defaults.object(forKey: "saveddata") as? [Int] ?? [Int]()
        questionsAnsweredterm = defaults.object(forKey: "savedterm") as? [Int] ?? [Int]()
        questionsAnsweredData = defaults.object(forKey: "savedData") as? [Int] ?? [Int]()
        
    }
}
