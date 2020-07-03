//
//  Questions.swift
//  Code Cracker
//
//  Created by Justin Zhang on 6/27/20.
//  Copyright © 2020 Roaz. All rights reserved.
//

import UIKit

struct Question {
    //let imgName: String
    let questionText: String
    let options: [String]
    let correctAns: Int
    var wrongAns: Int
    var isAnswered: Bool
}

class QuizVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var myCollectionView: UICollectionView!
    var questionsArray = [Question]()
    var score: Int = 0
    var currentQuestionNumber = 1
    var start = 0;
    var window: UIWindow?
    var category: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Home"
        self.view.backgroundColor=UIColor.darkGray //change
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: self.view.frame.width, height: self.view.frame.height)
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        
        myCollectionView=UICollectionView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), collectionViewLayout: layout)
        myCollectionView.delegate=self
        myCollectionView.dataSource=self
        myCollectionView.register(QuizCVCell.self, forCellWithReuseIdentifier: "Cell")
        myCollectionView.showsHorizontalScrollIndicator = false
        myCollectionView.translatesAutoresizingMaskIntoConstraints=false
        myCollectionView.backgroundColor=UIColor.darkGray //change
        myCollectionView.isPagingEnabled = true
        
        self.view.addSubview(myCollectionView)
        self.view.addSubview(btnBack)
        btnBack.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40).isActive=true
        btnBack.rightAnchor.constraint(equalTo: self.view.rightAnchor,constant: -30).isActive=true
        btnBack.widthAnchor.constraint(equalToConstant: 30).isActive=true
        btnBack.heightAnchor.constraint(equalToConstant: 30).isActive=true
        btnBack.addTarget(self, action: #selector(btnBackAction), for: .touchUpInside)
        
        let jv1 = Question(questionText: "What is java1 ?", options: ["2", "4", "8", "6"], correctAns: 1, wrongAns: -1, isAnswered: false)
        let jv2 = Question(questionText: "What is java2 ?", options: ["9", "4", "3", "6"], correctAns: 3, wrongAns: -1, isAnswered: false)
        let jv3 = Question(questionText: "What is java3 ?", options: ["2", "4", "3", "5"], correctAns: 2, wrongAns: -1, isAnswered: false)
        let jv4 = Question(questionText: "What is 2 - 2 ?", options: ["2", "4", "1", "0"], correctAns: 3, wrongAns: -1, isAnswered: false)
        let jv5 = Question(questionText: "What is 12 x 2 ?", options: ["24", "40", "26", "34"], correctAns: 0, wrongAns: -1, isAnswered: false)
        let jv6 = Question(questionText: "What is the color of sky?", options: ["Violet", "Yellow", "Blue", "White"], correctAns: 2, wrongAns: -1, isAnswered: false)
        let py1 = Question(questionText: "What is python1?", options: ["2", "4", "8", "6"], correctAns: 1, wrongAns: -1, isAnswered: false)
        let py2 = Question(questionText: "What is python2 ?", options: ["9", "4", "3", "6"], correctAns: 3, wrongAns: -1, isAnswered: false)
        let py3 = Question(questionText: "What is asdf3?", options: ["2", "4", "3", "5"], correctAns: 2, wrongAns: -1, isAnswered: false)
        let py4 = Question(questionText: "What is 2 - 2asdf ?", options: ["2", "4", "1", "0"], correctAns: 3, wrongAns: -1, isAnswered: false)
        let py5 = Question(questionText: "What is 12 x f2 ?", options: ["24", "40", "26", "34"], correctAns: 0, wrongAns: -1, isAnswered: false)
        let py6 = Question(questionText: "What is the color of sky?", options: ["Violet", "Yellow", "Blue", "White"], correctAns: 2, wrongAns: -1, isAnswered: false)
        if category == "Python" {
            questionsArray = [py1, py2, py3, py4, py5, py6]
        }
        else if category == "Java" {
            questionsArray = [jv1, jv2, jv3, jv4, jv5, jv6]
        }
        questionsArray = Array(questionsArray[start...])
        setupViews()
    }
    
    @objc func btnBackAction() {
        let v=Categories()
        self.navigationController?.pushViewController(v, animated: true)
    }
    
    let btnBack: UIButton = {
        let btn = UIButton()
        btn.setTitle("X", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.backgroundColor=UIColor.darkGray
        btn.layer.cornerRadius=15
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return questionsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! QuizCVCell
        cell.question=questionsArray[indexPath.row]
        cell.delegate=self
        return cell
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        setQuestionNumber()
    }
    
    func setCategory(cat:String) {
        category = cat
    }
    
    func setQuestionStart(questionNum:Int) {
        start = questionNum
    }
    
    func setQuestionNumber() {
        let x = myCollectionView.contentOffset.x
        let w = myCollectionView.bounds.size.width
        let currentPage = Int(ceil(x/w))
        if currentPage < questionsArray.count {
            lblQueNumber.text = "Question: \(currentPage+1) / \(questionsArray.count)"
            currentQuestionNumber = currentPage + 1
        }
    }
    
   @objc func btnNextAction() {
        if currentQuestionNumber != questionsArray.count {
            let collectionBounds = self.myCollectionView.bounds
                   var contentOffset: CGFloat = 0
                   contentOffset = CGFloat(floor(self.myCollectionView.contentOffset.x + collectionBounds.size.width))
                   currentQuestionNumber += currentQuestionNumber >= questionsArray.count + start ? 0 : 1
                   self.moveToFrame(contentOffset: contentOffset)
        }
    
    }
    
    func moveToFrame(contentOffset : CGFloat) {
        let frame: CGRect = CGRect(x : contentOffset ,y : self.myCollectionView.contentOffset.y ,width : self.myCollectionView.frame.width,height : self.myCollectionView.frame.height)
        self.myCollectionView.scrollRectToVisible(frame, animated: true)
    }
    
    func setupViews() {
        let screenRect = UIScreen.main.bounds
        let screenWidth = screenRect.size.width
        let screenHeight = screenRect.size.height
        myCollectionView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive=true
        myCollectionView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        myCollectionView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive=true
        myCollectionView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive=true
        myCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive=true
        
        self.view.addSubview(btnNext)
        btnNext.heightAnchor.constraint(equalToConstant: 50).isActive=true
        btnNext.widthAnchor.constraint(equalTo: self.view.widthAnchor,multiplier:0.5).isActive=true
        btnNext.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnNext.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10).isActive=true
      
    }
    
    let btnNext: UIButton = {
            let btn = UIButton()
            let customFont = UIFont(name: "CamingoCode-Regular", size: 25)
            let customLabel = UIButton()
            btn.titleLabel?.font = customFont
            btn.setTitle("Next", for: .normal)
            btn.setTitleColor(UIColor.green, for: .normal)
            btn.backgroundColor=UIColor.black
            btn.layer.cornerRadius=15
            btn.clipsToBounds=true
            btn.translatesAutoresizingMaskIntoConstraints=false
            btn.addTarget(self, action: #selector(btnNextAction), for: .touchUpInside)
            return btn
    }()
    
    let lblQueNumber: UILabel = {
        let lbl=UILabel()
        let customFont = UIFont(name: "CamingoCode-Regular", size: 16)
        let customLabel = UILabel()
        customLabel.font = customFont
        lbl.text="0 / 0"
        lbl.textColor=UIColor.green
        lbl.textAlignment = .left
        lbl.font = customFont
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let lblScore: UILabel = {
        let lbl=UILabel()
        let customFont = UIFont(name: "CamingoCode-Regular", size: 16)
        let customLabel = UILabel()
        customLabel.font = customFont
        lbl.text="0 / 0"
        lbl.textColor=UIColor.gray
        lbl.textAlignment = .right
        lbl.font = customFont
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
}

extension QuizVC: QuizCVCellDelegate {
    func didChooseAnswer(btnIndex: Int) {
        let centerIndex = getCenterIndex()
        guard let index = centerIndex else { return }
        questionsArray[index.item].isAnswered=true
        if questionsArray[index.item].correctAns != btnIndex {
            questionsArray[index.item].wrongAns = btnIndex
            score -= 1
        } else {
            score += 1
        }
        if currentQuestionNumber == questionsArray.count {
            btnNext.backgroundColor=UIColor.gray
            btnNext.setTitleColor(UIColor.black, for: .normal)
            btnNext.isEnabled = false;
        }
        lblScore.text = "Score: \(score) / \(questionsArray.count)"
        myCollectionView.reloadItems(at: [index])
    }
    
    func getCenterIndex() -> IndexPath? {
        let center = self.view.convert(self.myCollectionView.center, to: self.myCollectionView)
        let index = myCollectionView!.indexPathForItem(at: center)
        print(index ?? "index not found")
        return index
    }
    
}
















