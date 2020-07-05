//
//  SaveLoad.swift
//  Code Cracker
//
//  Created by Justin Zhang on 7/4/20.
//  Copyright © 2020 Roaz. All rights reserved.
//

import Foundation

var questionsAnsweredPython = [Int]()
var questionsAnsweredJava = [Int]()
var questionsAnsweredData = [Int]()

class Save {
    
    let defaults = UserDefaults.standard
    func saveArray() {
           defaults.set(questionsAnsweredPython, forKey: "savedPython")
           defaults.set(questionsAnsweredJava, forKey: "savedJava")
           defaults.set(questionsAnsweredData, forKey: "savedData")
    }
    
    func loadArray() {
        questionsAnsweredPython = defaults.object(forKey: "savedPython") as? [Int] ?? [Int]()
        questionsAnsweredJava = defaults.object(forKey: "savedJava") as? [Int] ?? [Int]()
        questionsAnsweredData = defaults.object(forKey: "savedData") as? [Int] ?? [Int]()
        
    }
}
