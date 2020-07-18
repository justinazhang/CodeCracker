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
    let explain: String
    var isAnswered: Bool
    
}

class Questions {
    var termsQuestionsArray = [Question]()
    var dataQuestionsArray = [Question]()
    
    init () {
        termsQuestionsArray = [py1, py2, py3, py4, py5, py6,py7,py8,py9,py10,py11,py12,py13,py14,py15,py16,
                                py17,py18,py19,py20,py21,py22,py23,py24,py25,py26,py27,py28,py29,py30]
        dataQuestionsArray = [jv1, jv2, jv3, jv4, jv5, jv6,jv7,jv8,jv9,jv10,jv11,jv12,jv13,jv14,jv15,jv16,
        jv17,jv18,jv19,jv20,jv21,jv22,jv23,jv24,jv25,jv26,jv27,jv28,jv29,jv30]
        
    }
    
    let defaults = UserDefaults.standard
    let jv1 = Question(questionText: "What is the average run time of selection sort?", options: ["Theta n ^ 2", "Theta n ^ 3", "Theta n", "Theta n log n"], correctAns: 0, quesNum:1, wrongAns: -1, explain:"Since selection sort works by iterating through two for loops of length n, the run-time is n ^ 2.", isAnswered: false)
    let jv2 = Question(questionText: "1 \n 2 \n 3 \n 4 \n 5 \n 6 \n 7 \n 8 \n 9 \n 10 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:2, wrongAns: -1, explain:"Explainiation2", isAnswered: false)
    let jv3 = Question(questionText: "What is term3 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:3, wrongAns: -1, explain:"Explainiation3", isAnswered: false)
    let jv4 = Question(questionText: "What is term4 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:4, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv5 = Question(questionText: "What is term5 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:5, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv6 = Question(questionText: "What is term6 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:6, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv7 = Question(questionText: "What is term7 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:7, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv8 = Question(questionText: "What is term8 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:8, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv9 = Question(questionText: "What is term9 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:9, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv10 = Question(questionText: "What is term10 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:10, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv11 = Question(questionText: "What is term11 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:11, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv12 = Question(questionText: "What is term12 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:12, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv13 = Question(questionText: "What is term13 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:13, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv14 = Question(questionText: "What is term14 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:14, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv15 = Question(questionText: "What is term15 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:15, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv16 = Question(questionText: "What is term16 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:16, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv17 = Question(questionText: "What is term17 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:17, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv18 = Question(questionText: "What is term18 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:18, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv19 = Question(questionText: "What is term19 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:19, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv20 = Question(questionText: "What is term20 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:20, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv21 = Question(questionText: "What is term21 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:21, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv22 = Question(questionText: "What is term22 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:22, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv23 = Question(questionText: "What is term23 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:23, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv24 = Question(questionText: "What is term24 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:24, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv25 = Question(questionText: "What is term25 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:25, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv26 = Question(questionText: "What is term26 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:26, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv27 = Question(questionText: "What is term27 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:27, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv28 = Question(questionText: "What is term28 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:28, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv29 = Question(questionText: "What is term29 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:29, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    let jv30 = Question(questionText: "What is term30 ?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:30, wrongAns: -1, explain:"Explainiation", isAnswered: false)
    
    
    let py1 = Question(questionText: "What is data1?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:1,wrongAns: -1, explain:"Explain1",isAnswered: false)
    let py2 = Question(questionText: "What is data2?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:2,wrongAns: -1, explain:"Explain2",isAnswered: false)
    let py3 = Question(questionText: "What is data3?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:3,wrongAns: -1, explain:"Explain3",isAnswered: false)
    let py4 = Question(questionText: "What is data4?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:4,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py5 = Question(questionText: "What is data5?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:5,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py6 = Question(questionText: "What is data6?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:6,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py7 = Question(questionText: "What is data7?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:7,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py8 = Question(questionText: "What is data8?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:8,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py9 = Question(questionText: "What is data9?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:9,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py10 = Question(questionText: "What is data10?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:10,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py11 = Question(questionText: "What is data11?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:11,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py12 = Question(questionText: "What is data12?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:12,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py13 = Question(questionText: "What is data13?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:13,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py14 = Question(questionText: "What is data14?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:14,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py15 = Question(questionText: "What is data15?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:15,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py16 = Question(questionText: "What is data16?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:16,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py17 = Question(questionText: "What is data17?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:17,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py18 = Question(questionText: "What is data18?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:18,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py19 = Question(questionText: "What is data19?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:19,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py20 = Question(questionText: "What is data20?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:20,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py21 = Question(questionText: "What is data21?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:21,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py22 = Question(questionText: "What is data22?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:22,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py23 = Question(questionText: "What is data23?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:23,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py24 = Question(questionText: "What is data24?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:24,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py25 = Question(questionText: "What is data25?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:25,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py26 = Question(questionText: "What is data26?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:26,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py27 = Question(questionText: "What is data27?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:27,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py28 = Question(questionText: "What is data28?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:28,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py29 = Question(questionText: "What is data29?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:29,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py30 = Question(questionText: "What is data30?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:30,wrongAns: -1, explain:"Explain",isAnswered: false)


    func gettermArray() -> Array<Question>{
        return termsQuestionsArray
    }
    
    func getdataArray() -> Array<Question>{
        return dataQuestionsArray
    }
    

    
    
}







