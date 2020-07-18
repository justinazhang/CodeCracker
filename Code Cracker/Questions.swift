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
    
    
    let py1 = Question(questionText: "What is a default constructor?", options: ["A constructor that sets every variable to a default value", "A constructor that either has no parameters or parameters of default values", "A constructor that only takes one argument", "A constructor that resets the code to its default state"], correctAns: 1, quesNum:1,wrongAns: -1, explain:"Explain1",isAnswered: false)
    let py2 = Question(questionText: "What is polymorphism?", options: ["The ability of a message to be processed in one way", "The ability to have functionality inherited and implemented from base classes to subclasses", "The ability of many messages or data to be processes in one way", "The ability to use undefined functions in more than one way"], correctAns: 1, quesNum:2,wrongAns: -1, explain:"Explain2",isAnswered: false)
    let py3 = Question(questionText: "Pros of string final:", options: ["Security", "Multithreading benefits", "Optimization and performance", "All of the above"], correctAns: 3, quesNum:3,wrongAns: -1, explain:"Explain3",isAnswered: false)
    let py4 = Question(questionText: "Which of these cannot be accessed by inherited classes?", options: ["A private function", "A protected function", "A public function", "All functions can be acessed"], correctAns: 0, quesNum:4,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py5 = Question(questionText: "What is the difference between overriding and overloading?", options: ["Overriding increases the readability of the program", "Overriding is done in the same class while overloading requires base and child classes", "Overloading is done in the same class while overriding requires base and child classes", "Overloading is used to provide the specific implementation of the method that is already provided by its super class."], correctAns: 2, quesNum:5,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py6 = Question(questionText: "What is a file?", options: ["A file is a location that stores information and data", "A file is an object created that insures that the code runs properly", "A file runs the code", "A file is a list of strings and integers"], correctAns: 0, quesNum:6,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py7 = Question(questionText: "A class...", options: ["must contain a strings, booleans, and integers", "serves as a template for creating, or instantiating, specific objects", "serves as the database of information; stores all code within a project", "cannot inherit variables from other classes"], correctAns: 1, quesNum:7,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py8 = Question(questionText: "What is inheritance?", options: ["The process in which an external device that stores information permanently", "The process in which a computer accesses its hardware functions", "The property that has been passed from a superclass to a subclass", "All of the above"], correctAns: 2, quesNum:8,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py9 = Question(questionText: "What is a chipset?", options: ["A chipset essentially determines what components are compatible with the motherboard", "A chipset plays a cruical role in system performance", "A chipset controls communication between processors and devices", "All of the above"], correctAns: 3, quesNum:9,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py10 = Question(questionText: "What is a conversion constructor?", options: ["A constructor that converts default values to implicit values", "A constructor that either has no parameters or parameters of default values", "A non- explicit constructor that only takes one argument", "All of the above"], correctAns: 2, quesNum:10,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py11 = Question(questionText: "Primary memory:", options: ["includes RAM, ROM, cache, and flash memory", "semiconductor chips are the most used for this", "in the computer can be accessed by the CPU", "all of the above"], correctAns: 3, quesNum:11,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py12 = Question(questionText: "What is an advantage of multiple inheritance?", options: ["There are no advantages", "It reduces the complexity of the code", "Classes all become dependent on each other", "It allows for the creation of complex classes and allows subclasses to reuse inherited attributes "], correctAns: 3, quesNum:12,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py13 = Question(questionText: "What is source code?", options: ["The code that makes up the program", "The functions the code", "every binary value of the program", "All of the above"], correctAns: 0, quesNum:13,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py14 = Question(questionText: "What is data14?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:14,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py15 = Question(questionText: "What is a disadvantage of multiple inheritance?", options: ["It can lead to a lot of confusion and ambiguity when two base classes implement a method with the same name", "There are no disadvantages", "It prevents the child class from making a constructor", "None of the above"], correctAns: 0, quesNum:15,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py16 = Question(questionText: "What is a superclass?", options: ["A class from which subclasses can be created and inherit code from", "A class in which subgroups can be made", "A class that stores all of the main code", "All of the above"], correctAns: 0, quesNum:16,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py17 = Question(questionText: "What is a repository?", options: ["a storage location for software packages/code/files", "a function called in code that saves the project", "a software package", "All of the above"], correctAns: 0, quesNum:17,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py18 = Question(questionText: "What type of variable can be defined in an interface?", options: ["Public Static", "Static Final", "Public Final", "All of the above"], correctAns: 1, quesNum:18,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py19 = Question(questionText: "Which of the following is true of an interface?", options: ["It is a group of related methods with empty bodies in Java", "All methods must be implemented here", "They contain method declaration", "All of the above"], correctAns: 3, quesNum:19,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py20 = Question(questionText: "What is an object?", options: ["an intance of a class", "an instance of a constructor", "a method", "a string that defines items"], correctAns: 0, quesNum:20,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py21 = Question(questionText: "Can main() function be made private?", options: ["Yes, if the program doesn’t contain any classes", "Yes, always", "No, because main function is defined by the user", "No, never"], correctAns: 3, quesNum:21,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py22 = Question(questionText: "What is secondary memory?", options: ["Includes RAM, ROM, cache, and flash memory", "the second process a computer carries out after storing the primary memory", "An external device that stores information permanently", "All of the above"], correctAns: 2, quesNum:22,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py23 = Question(questionText: "Which of the following is the correct construction of a list?", options: ["[\"1\", \"2\", \"3\"]", "var names = [\"George\", \"Henry\", \"Mark\"]", "int ages = [\"young\", \"old\", \"very old\"]", "All of the above"], correctAns: 1, quesNum:23,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py24 = Question(questionText: "Which of the following is an example of a string?", options: ["14", "[\"I\", \"love\", \"pizza\"]", "\"I love pizza\"", "53.333"], correctAns: 2, quesNum:24,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py25 = Question(questionText: "A boolean...", options: ["can range from int values to string values", "can not be put into a list", "is more precise than a double", "has two possible values, true and false"], correctAns: 3, quesNum:25,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py26 = Question(questionText: "Which of the following is an integer?", options: ["1.8", "46", "1/2", "All of the above"], correctAns: 1, quesNum:26,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py27 = Question(questionText: "What is an array?", options: ["A list of mutiple strings", "A list of mulitple integers", "A list of elements of any type", "A collection of elements of the same type"], correctAns: 3, quesNum:27,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py28 = Question(questionText: "What is the difference between a float and a double?", options: ["A double has more precision", "A float is faster", "A float takes up less memory", "All of the above"], correctAns: 3, quesNum:28,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py29 = Question(questionText: "Which of the following is a float?", options: ["-55.765", "Jake", "-14", "1/3"], correctAns: 0, quesNum:29,wrongAns: -1, explain:"Explain",isAnswered: false)
    let py30 = Question(questionText: "What is data30?", options: ["2", "4", "8", "6"], correctAns: 1, quesNum:30,wrongAns: -1, explain:"Explain",isAnswered: false)


    func gettermArray() -> Array<Question>{
        return termsQuestionsArray
    }
    
    func getdataArray() -> Array<Question>{
        return dataQuestionsArray
    }
    

    
    
}







