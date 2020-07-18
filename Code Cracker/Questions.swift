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
    var codeQuestionsArray = [Question]()
    
    init () {
        termsQuestionsArray = [py1, py2, py3, py4, py5, py6,py7,py8,py9,py10,py11,py12,py13,py14,py15,py16,
                                py17,py18,py19,py20,py21,py22,py23,py24,py25,py26,py27,py28,py29,py30]
        dataQuestionsArray = [jv1, jv2, jv3, jv4, jv5, jv6,jv7,jv8,jv9,jv10,jv11,jv12,jv13,jv14,jv15,jv16,
        jv17,jv18,jv19,jv20,jv21,jv22,jv23,jv24,jv25,jv26,jv27,jv28,jv29,jv30]
        codeQuestionsArray = [cd1, cd2, cd3, cd4, cd5, cd6,cd7,cd8,cd9,cd10,cd11,cd12,cd13,cd14,cd15,cd16,
               cd17,cd18,cd19,cd20,cd21,cd22,cd23,cd24,cd25,cd26,cd27,cd28,cd29,cd30]
        
    }
    
    let defaults = UserDefaults.standard
    let jv1 = Question(questionText: "What is the average run time of selection sort?", options: ["Theta n ^ 2", "Theta n ^ 3", "Theta n", "Theta n log n"], correctAns: 0, quesNum:1, wrongAns: -1, explain:"Since selection sort works by iterating through two for loops of length n, the run-time is n ^ 2.", isAnswered: false)
    let jv2 = Question(questionText: "Which of the following algorithms can be used to most efficently determine if a graph contains a cycle?", options: ["Prim's Algorithm", "Kruskal's Algorithm", "Breadth First Search", "Depth First Search"], correctAns: 3, quesNum:2, wrongAns: -1, explain:"Runnig DFS for the graph allows us to check for back edges which is the most efficent", isAnswered: false)
    let jv3 = Question(questionText: "What is the worst run time of insertion sort?", options: ["O (n)", "O (log n)", "O (n log n)", "O (n ^ 2)"], correctAns: 3, quesNum:3, wrongAns: -1, explain:"Inseration sort has an average and worse case run time of O n^2. For example, if the list is in reverse sorted order,  then we would have to do  1 + 2 + ... + n - 1 swaps or (n * (n - 1) ) / 2 leading to a run time of O (n ^ 2) .", isAnswered: false)
    let jv4 = Question(questionText: "What makes a good hash table?", options: ["Spreading the items evenly over buckets", "Using as few buckets as possible", "Making sure the buckets don't overflow", "All of the above"], correctAns: 3, quesNum:4, wrongAns: -1, explain:"A good hash table has an even distribution across buckets, but makes sure none of the buckets are too full or too empty.", isAnswered: false)
    let jv5 = Question(questionText: "Which of the following is not a way to traverse a tree?", options: ["Reverse order traversal", "Pre-order traversal", "Post-order traversal", "Breadth-first order"], correctAns: 0, quesNum:5, wrongAns: -1, explain:"There are four general ways to traverse a tree: pre-order, in-order, post-order, and breadth-first order.", isAnswered: false)
    let jv6 = Question(questionText: "What is the difference between the stack and queue data structures?", options: ["A stack must be bounded while a queue can not", "Stacks must be built out of array lists", "Stacks are FIFO (first in first out) while queues are LIFO. (last in first out)", "Queues are FIFO while stacks are LIFO."], correctAns: 1, quesNum:6, wrongAns: -1, explain:"Stack has the methods of push, inserting an item at the top, and pop, removing the item at the top so it is FIFO. Queues has the method add, which adds an item to the back of the queue, and remove, which removes the item from the front of the queue.", isAnswered: false)
    let jv7 = Question(questionText: "What is the space complexity of merge sort?", options: ["Ω (n)", "Ω (n ^ 2)", "Ω (n log n)", "Ω (log n)"], correctAns: 1, quesNum:7, wrongAns: -1, explain:"The best case for merge sort is Ω (n) because you have to store your list somewhere.", isAnswered: false)
    let jv8 = Question(questionText: "How do red-black trees improve on a standard BST tree?", options: ["Reduces the memory required to hold the tree", "Improves the run time of the add function", "Reduces the height of the tree", "All of the above"], correctAns: 2, quesNum:8, wrongAns: -1, explain:"Red black trees ensure balance in a tree where as a normal BST could get very narrow and long.", isAnswered: false)
    let jv9 = Question(questionText: "How does A* differ from Dijkstra's algorithm?", options: ["A* finds a minimum spanning tree", "A* is faster than Dijkstra's algorithm", "A* is a greedy algorithm and Dijkstra's is not", "A * is slower than Dijkstra's algorithm"], correctAns: 1, quesNum:9, wrongAns: -1, explain:"A* uses a heuristic function to help \"guide\" a path from the source to the destination node while Dijkstra's has to check every node", isAnswered: false)
    let jv10 = Question(questionText: "What is the average run time of bubble sort?", options: ["O (n)", "Θ (n ^ 2)", "Θ (n ^ 2)", "Θ (n ^ 2)"], correctAns: 1, quesNum:10, wrongAns: -1, explain:"In bubble sort, n - 1 comparisons will be done in the first iteration, n- 2 in the second, n - 3 in the third, and so on. So the total would be n * (n-1) / 2 or O O( n ^2)", isAnswered: false)
    let jv11 = Question(questionText: "Find a simple f(N) such that the runtime R(n) ∈ Θ(f(n)) ?", options: ["n", "log n", "n ^ 2", "2 ^ n"], correctAns: 1, quesNum:11, wrongAns: -1, explain:"Everytime we increase n by 1. We double the work. Try drawing a tree to help visualize why this is true. ", isAnswered: false)
    let jv12 = Question(questionText: "What is the runtime to get an item from a hash table (asssuming the items are evenly spread)?", options: ["Θ (log n)", "Θ (n log n)", "Θ (1)", "Θ (n)"], correctAns: 2, quesNum:12, wrongAns: -1, explain:"Since the load factor is the number of items divided by the number of buckets, if we maintain the ratio to be a constant. Our get fuction will be constant as well.", isAnswered: false)
    let jv13 = Question(questionText: "Selection sort is an algorithim based on the principle of ", options: ["Brute force", "Divide and conquer", "Recursion", "Greedy Method"], correctAns: 0, quesNum:13, wrongAns: -1, explain:"Selection sort goes through each item individually and compares them to the minimum", isAnswered: false)
    let jv14 = Question(questionText: "What does it mean for a function to be Θ (f(N))?", options: ["Order of growth is  less than f(N)", "Order of growth is f(N)", "Order of growth is greater than f(N)", "Order of growth is less than or equal to f(N)"], correctAns: 1, quesNum:14, wrongAns: -1, explain:"Θ (f(N)) is defined as there being some positive constants a and b such that a · f(N) ≤ f(N) ≤ b · f(N).", isAnswered: false)
    let jv15 = Question(questionText: "What is the worst case total number of calls for binary search given six items?", options: ["3", "4", "5", "None of the above"], correctAns: 1, quesNum:15, wrongAns: -1, explain:"The worst case scenario of binary search is floor log 2 (N) + 1.", isAnswered: false)
    let jv16 = Question(questionText: "What is the worst case runtime to find an item in a binary search tree of height h?", options: ["Θ (h ^ 2)", "Θ (h log h)", "Θ (log h)", "Θ (h)"], correctAns: 1, quesNum:16, wrongAns: -1, explain:"In the worst case, the BST will only have branch coming out of each node so we would have to traverse each item.", isAnswered: false)
    let jv17 = Question(questionText: "What is the Dijkstra's algorith used for?", options: ["Determining if a graph is acylcic", "Determining the shortest path from a source to all other nodes", "Find the minimum spanning tree in a graph", "None of the above"], correctAns: 2, quesNum:17, wrongAns: -1, explain:"Dijkstra's algorithm, along with Prim's algorithm, is the industry standard for finding the shortest paths between nodes in a graph. ", isAnswered: false)
    let jv18 = Question(questionText: "What is the worst run time of quick sort?", options: ["O (n log n)", "O (n ^ 2)", "O (n)", " O (kn)"], correctAns: 1, quesNum:18, wrongAns: -1, explain:"The worst case occurs when the partition alwys picks the greatest or smallest elemnt as the pivot. This gives you n groups that each need to be iterated through n times, which has a O(n ^ 2) complexity.", isAnswered: false)
    let jv19 = Question(questionText: "Dijkstra's algorithm is an algorithim based on the princple of", options: ["Divide and conquer", "Brute Force", "Dynamic programming", "Greedy algorithims"], correctAns: 3, quesNum:19, wrongAns: -1, explain:"With Dijkstra's algorithm, we choose the locally optimal choice and repeat the process from there, which follows the definiton of a greedy algorthim which follows the problem solving heuristic of making locally optimal choices.", isAnswered: false)
    let jv20 = Question(questionText: "Which of the following operations can not be performed on a convential stack?", options: ["Push", "Pull", "Peek (Top)", "Pop"], correctAns: 2, quesNum:20, wrongAns: -1, explain:"The three operations that can be performed on stacks include inserting an item into a stack (push), deleting an item (pop), and displaying the contents (peek).", isAnswered: false)
    let jv21 = Question(questionText: "What is the runtime of the function 30 cos(N) + 2N ^ 3?", options: ["Θ (N)", "Θ (30 cos (N))", "O (N)", "Θ (N ^ 3)"], correctAns: 2, quesNum:21, wrongAns: -1, explain:"Θ(f(N)) is defined as there being some positive constants a and b such that a · f(N) ≤ f(N) ≤ b · f(N). In this case, we focus on the 2N ^ 3, which has the simple function of N ^ 3, since 2 is between 1 · N ^ 3 ≤ 2 · N ^ 3 ≤ 3 · N ^ 3 ", isAnswered: false)
    let jv22 = Question(questionText: "What is the runtime to complete a search on a \"bushy\" BST in the worst case, where N is the number of nodes?", options: ["Θ (log n)", "Θ (n)", "Θ (n log n)", "Θ (n ^ 2)"], correctAns: 0, quesNum:22, wrongAns: -1, explain:"Height of the tree is approxiametly log 2 N if bushy and worst case is going to the bottom of the tree", isAnswered: false)
    let jv23 = Question(questionText: "What is the time complexity to inserat a node at index i given a priority queue of n items??", options: ["Θ (n log n)", "Θ (i)", "Θ (n)", "Θ (log n log i)"], correctAns: 2, quesNum:23, wrongAns: -1, explain:"In the worst case runtime, one would have to traverse the whoel priority queue which would be O(n) runtime.", isAnswered: false)
    let jv24 = Question(questionText: "How long does it take to resize a hash table with n items?", options: ["Θ (log n)", "Θ (n)", "Θ (n ^ 2)", "Θ (n log n)"], correctAns: 1, quesNum:24, wrongAns: -1, explain:"We need to redistribute all items into their respective buckets.", isAnswered: false)
    let jv25 = Question(questionText: "When does Dijkstra's algoirthm not work??", options: ["If there are two edges that are the same length", "Some of the edges are negative", "The graph is a cycle", "Dijkstra's algorithm always works"], correctAns: 1, quesNum:25, wrongAns: -1, explain:"Dijkstra's algorithm assumes a path can only become heavier and therefore will \"ignore\" the negative edge while traversing the graph as it has already marked the node as complete. ", isAnswered: false)
    let jv26 = Question(questionText: "Given an undirected graph, a spanning tree T is a subgraph of G, where T?", options: ["is connected", "is acyclic", "includes all of the vericies", "All of the above"], correctAns: 1, quesNum:26, wrongAns: -1, explain:"Spanning trees must be connected and acylic to be considered a tree. It must also include all of the vertices of the graph to be spanning.", isAnswered: false)
    let jv27 = Question(questionText: "What is big O notation?", options: ["It describes the worst- case scenario for the run time or space of a function", "It describes the best- case scenario for the run time or space of a function", "It describes the average scenario for the run time or space of a function", "None of the above"], correctAns: 0, quesNum:27, wrongAns: -1, explain:"Big O provides the upper bound for a function in terms of space or time, but says nothing about the lower bound. ", isAnswered: false)
    let jv28 = Question(questionText: "What is the runtime to get an item from a balanced BST?", options: ["Θ (log n)", "Θ (n)", "Θ (n log n)", "Θ (1)"], correctAns: 0, quesNum:28, wrongAns: -1, explain:"Since the height of the tree is approximately log n, we have to search a max of log n items", isAnswered: false)
    let jv29 = Question(questionText: "What does it mean for a function to be O (f(N))?", options: ["Order of growth is f(N)", "Order of growth is greater than f(N)", "Order of growth is less than f(N)", "Order of growth is less than or equal to f(N)"], correctAns: 3, quesNum:29, wrongAns: -1, explain:"Θ (f(N)) is defined as there being some positive constants a that f(N) ≤ a · f(N).", isAnswered: false)
    let jv30 = Question(questionText: "What is the runtime of the function N * 26 ^ N + N ^ 2?", options: ["Θ (n ^ 2)", "O (n · 26 ^ n)", "Θ (n)", "O (n ^ 2)"], correctAns: 1, quesNum:30, wrongAns: -1, explain:"Θ(f(N)) is defined as there being some positive constants a and b such that a · f(N) ≤ f(N) ≤ b · f(N). In this case, we focus on the n · 26 ^ n, since it outweighs the other parts of the equation ", isAnswered: false)
    
    
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
    
    
    let cd1 = Question(questionText: "", options: ["", "", ""], correctAns: 1, quesNum:1,wrongAns: -1, explain:"Explain1",isAnswered: false)
       let cd2 = Question(questionText: "", options: ["", "", "", ""], correctAns: 1, quesNum:2,wrongAns: -1, explain:"Explain2",isAnswered: false)
       let cd3 = Question(questionText: "", options: ["", "", "", ""], correctAns: 3, quesNum:3,wrongAns: -1, explain:"Explain3",isAnswered: false)
       let cd4 = Question(questionText: "", options: ["", "", "", ""], correctAns: 0, quesNum:4,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd5 = Question(questionText: "", options: ["", "", "", ""], correctAns: 2, quesNum:5,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd6 = Question(questionText: "?", options: ["", "", "", ""], correctAns: 0, quesNum:6,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd7 = Question(questionText: "", options: ["", "", "", ""], correctAns: 1, quesNum:7,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd8 = Question(questionText: "", options: ["", "", "", ""], correctAns: 2, quesNum:8,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd9 = Question(questionText: "", options: ["", "", "", ""], correctAns: 3, quesNum:9,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd10 = Question(questionText: "", options: ["", "", "", ""], correctAns: 2, quesNum:10,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd11 = Question(questionText: "", options: ["", "", "", ""], correctAns: 3, quesNum:11,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd12 = Question(questionText: "", options: ["", "", "", ""], correctAns: 3, quesNum:12,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd13 = Question(questionText: "", options: ["", "", "", ""], correctAns: 0, quesNum:13,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd14 = Question(questionText: "", options: ["", "", "", ""], correctAns: 1, quesNum:14,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd15 = Question(questionText: "", options: ["", "", "", ""], correctAns: 0, quesNum:15,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd16 = Question(questionText: "", options: ["", "", "", ""], correctAns: 0, quesNum:16,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd17 = Question(questionText: "", options: ["", "", "", ""], correctAns: 0, quesNum:17,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd18 = Question(questionText: "", options: ["", "", "", ""], correctAns: 1, quesNum:18,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd19 = Question(questionText: "", options: ["", "", "", ""], correctAns: 3, quesNum:19,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd20 = Question(questionText: "", options: ["", "", "", ""], correctAns: 0, quesNum:20,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd21 = Question(questionText: "", options: ["", "", "", ""], correctAns: 3, quesNum:21,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd22 = Question(questionText: "", options: ["", "", "", ""], correctAns: 2, quesNum:22,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd23 = Question(questionText: "", options: ["", "", "", ""], correctAns: 1, quesNum:23,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd24 = Question(questionText: "", options: ["", "", "", ""], correctAns: 2, quesNum:24,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd25 = Question(questionText: "", options: ["", "", "", ""], correctAns: 3, quesNum:25,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd26 = Question(questionText: "", options: ["", "", "", ""], correctAns: 1, quesNum:26,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd27 = Question(questionText: "", options: ["", "", "", ""], correctAns: 3, quesNum:27,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd28 = Question(questionText: "", options: ["", "", "", ""], correctAns: 3, quesNum:28,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd29 = Question(questionText: "", options: ["", "", "", ""], correctAns: 0, quesNum:29,wrongAns: -1, explain:"Explain",isAnswered: false)
       let cd30 = Question(questionText: "", options: ["", "", "", ""], correctAns: 1, quesNum:30,wrongAns: -1, explain:"Explain",isAnswered: false)


    func gettermArray() -> Array<Question>{
        return termsQuestionsArray
    }
    
    func getdataArray() -> Array<Question>{
        return dataQuestionsArray
    }
    
    func getcodeArray() -> Array<Question>{
        return codeQuestionsArray
    }

    
    
}





