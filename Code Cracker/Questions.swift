//
//  Questions.swift
//  Code Cracker
//
//  Created by Justin Zhang on 7/3/20.
//  Copyright © 2020 Roaz. All rights reserved.
//

import Foundation



struct Question {
    let questionText: String
    let options: [String]
    let correctAns: Int
    let quesNum: Int
    var wrongAns: Int
    var isAnswered: Bool
    
}

class Questions {
    var pythonQuestionsArray = [Question]()
    var javaQuestionsArray = [Question]()
    
    init () {
        pythonQuestionsArray = [py1, py2, py3, py4, py5, py6]
        javaQuestionsArray = [jv1, jv2, jv3, jv4, jv5, jv6]
    }
    
    let defaults = UserDefaults.standard
    let jv1 = Question(questionText: "What is java1 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:1, wrongAns: -1, isAnswered: false)
    let jv2 = Question(questionText: "What is java2 ?", options: ["9", "4", "3", "6"], correctAns: 3, quesNum:2,wrongAns: -1, isAnswered: false)
    let jv3 = Question(questionText: "What is java3 ?", options: ["2", "4", "3", "5"], correctAns: 2, quesNum:3,wrongAns: -1, isAnswered: false)
    let jv4 = Question(questionText: "What is 2 - 2 ?", options: ["2", "4", "1", "0"], correctAns: 3, quesNum:4,wrongAns: -1, isAnswered: false)
    let jv5 = Question(questionText: "What is 12 x 2 ?", options: ["24", "40", "26", "34"], correctAns: 0, quesNum:5, wrongAns: -1, isAnswered: false)
    let jv6 = Question(questionText: "What is the color of sky?", options: ["Violet", "Yellow", "Blue", "White"], correctAns: 2, quesNum:6, wrongAns: -1, isAnswered: false)
    let py1 = Question(questionText: "What is python1?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:1,wrongAns: -1, isAnswered: false)
    let py2 = Question(questionText: "What is python2 ?", options: ["9", "4", "3", "6"], correctAns: 3, quesNum:2,wrongAns: -1, isAnswered: false)
    let py3 = Question(questionText: "What is asdf3?", options: ["2", "4", "3", "5"], correctAns: 2, quesNum:3,wrongAns: -1, isAnswered: false)
    let py4 = Question(questionText: "What is 2 - 2asdf ?", options: ["2", "4", "1", "0"], correctAns: 3, quesNum:4,wrongAns: -1, isAnswered: false)
    let py5 = Question(questionText: "What is 12 x f2 ?", options: ["24", "40", "26", "34"], correctAns: 0, quesNum:5,wrongAns: -1, isAnswered: false)
    let py6 = Question(questionText: "What is the color of sky?", options: ["Violet", "Yellow", "Blue", "White"], correctAns: 2, quesNum:6,wrongAns: -1, isAnswered: false)
    
    func getJavaArray() -> Array<Question>{
        return javaQuestionsArray
    }
    
    func getPythonArray() -> Array<Question>{
        return pythonQuestionsArray
    }
    

    
    
}







