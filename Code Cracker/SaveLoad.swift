//
//  SaveLoad.swift
//  Code Cracker
//
//  Created by Justin Zhang on 7/4/20.
//  Copyright © 2020 REZEN. All rights reserved.
//

import Foundation

var questionsAnsweredData = [Int]()
var questionsAnsweredTerm = [Int]()
var questionsAnsweredCode = [Int]()

class Save {
    
    let defaults = UserDefaults.standard
    func saveArray() {
           defaults.set(questionsAnsweredData, forKey: "savedData")
           defaults.set(questionsAnsweredTerm, forKey: "savedTerm")
           defaults.set(questionsAnsweredCode, forKey: "savedCode")
    }
    
    func loadArray() {
        questionsAnsweredData = defaults.object(forKey: "savedData") as? [Int] ?? [Int]()
        questionsAnsweredTerm = defaults.object(forKey: "savedTerm") as? [Int] ?? [Int]()
        questionsAnsweredCode = defaults.object(forKey: "savedCode") as? [Int] ?? [Int]()
        
    }
}
