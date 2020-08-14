//
//  Questions.swift
//  Code Cracker
//
//  Created by Justin Zhang on 6/27/20.
//  Copyright © 2020 REZEN. All rights reserved.
//

import UIKit



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
        self.view.backgroundColor=UIColor.darkGray

        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: self.view.frame.width, height: self.view.frame.height)
                layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        layout.scrollDirection = .horizontal
        myCollectionView=UICollectionView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), collectionViewLayout: layout)
        myCollectionView.delegate=self
        myCollectionView.dataSource=self
        myCollectionView.register(QuizCVCell.self, forCellWithReuseIdentifier: "Cell")
        myCollectionView.showsHorizontalScrollIndicator = false
        myCollectionView.translatesAutoresizingMaskIntoConstraints=false
        myCollectionView.backgroundColor=UIColor.darkGray 
        myCollectionView.isPagingEnabled = false
        myCollectionView.isScrollEnabled = false
        
        self.view.addSubview(myCollectionView)
        let v = Questions()
        if category == "data" {
            questionsArray = v.getDataArray()
        }
        else if category == "term" {
            questionsArray = v.getTermArray()
        }
        else if category == "code" {
            questionsArray = v.getCodeArray()
        }
        
        questionsArray = Array(questionsArray[start...])
        setupViews()
        if category == "term" {
            btnExplain.isHidden = true
        }
    }



    @objc func btnBackAction() {
        let v=QuestionNumber()
        v.setCategory(cat: category)
        
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
            currentQuestionNumber = currentPage + 1
        }
    }

   @objc func btnNextAction() {
        if currentQuestionNumber != questionsArray.count {
            btnNext.isUserInteractionEnabled = false
            Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false, block: { _ in
                self.btnNext.isUserInteractionEnabled = true
            })
            myCollectionView.isScrollEnabled = true
            let collectionBounds = self.myCollectionView.bounds
            var contentOffset: CGFloat = 0
            contentOffset = CGFloat(self.myCollectionView.contentOffset.x + collectionBounds.size.width + 1)
            currentQuestionNumber += currentQuestionNumber >= questionsArray.count + start ? 0 : 1
            self.moveToFrame(contentOffset: contentOffset)
        }
        btnExplain.backgroundColor=UIColor.gray
        btnExplain.setTitleColor(UIColor.black, for: .normal)
        btnExplain.isEnabled = false;
        myCollectionView.isPagingEnabled = false
        myCollectionView.isScrollEnabled = false

    }
    
    @objc func btnExplainAction() {
    let centerIndex = getCenterIndex()
    guard let index = centerIndex else { return }
     var popUpWindow: PopUpWindow!
     popUpWindow = PopUpWindow(title: "", text: questionsArray[index.item].explain, buttontext: "Ok")
    self.present(popUpWindow, animated: true, completion: nil)

     }

    func moveToFrame(contentOffset : CGFloat) {
        myCollectionView.contentOffset.y = 0
        let frame: CGRect = CGRect(x : contentOffset ,y : self.myCollectionView.contentOffset.y ,width : self.myCollectionView.frame.width,height : self.myCollectionView.frame.height)
        self.myCollectionView.scrollRectToVisible(frame, animated: true)
    }

    func setupViews() {
        myCollectionView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive=true
        myCollectionView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        myCollectionView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive=true
        myCollectionView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive=true
        myCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive=true

        self.view.addSubview(btnNext)
        btnNext.heightAnchor.constraint(equalToConstant: 50).isActive=true
        btnNext.widthAnchor.constraint(equalTo: self.view.widthAnchor,multiplier:0.5).isActive=true
        btnNext.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnNext.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -25).isActive=true
        
        self.view.addSubview(btnExplain)
        btnExplain.heightAnchor.constraint(equalToConstant: 50).isActive=true
        btnExplain.widthAnchor.constraint(equalToConstant:50).isActive=true
        btnExplain.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant:-20).isActive=true
        btnExplain.bottomAnchor.constraint(equalTo: btnNext.bottomAnchor).isActive=true
        btnExplain.backgroundColor=UIColor.gray
        btnExplain.setTitleColor(UIColor.black, for: .normal)
        btnExplain.isEnabled = false;
        
        self.view.addSubview(btnBack)
        btnBack.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40).isActive=true
        btnBack.rightAnchor.constraint(equalTo: self.view.rightAnchor,constant: -30).isActive=true
        btnBack.widthAnchor.constraint(equalToConstant: 30).isActive=true
        btnBack.heightAnchor.constraint(equalToConstant: 30).isActive=true
        btnBack.addTarget(self, action: #selector(btnBackAction), for: .touchUpInside)
        
        if currentQuestionNumber == questionsArray.count {
                   btnNext.backgroundColor=UIColor.gray
                   btnNext.setTitleColor(UIColor.black, for: .normal)
                   btnNext.isEnabled = false;
               }
        

    }

    let btnNext: UIButton = {

            let btn = UIButton()
            let customFont = UIFont(name: "CamingoCode-Regular", size: 25)
            let customLabel = UIButton()
            btn.titleLabel?.font = customFont
            btn.setTitle("Next", for: .normal)
            btn.setTitleColor(UIColor.white, for: .normal)
            btn.backgroundColor=UIColor.black
            btn.layer.cornerRadius=15
            btn.clipsToBounds=true
            btn.translatesAutoresizingMaskIntoConstraints=false
            btn.addTarget(self, action: #selector(btnNextAction), for: .touchUpInside)
            return btn
    }()
    
    let btnExplain: UIButton = {

            let btn = UIButton()
            let customFont = UIFont(name: "CamingoCode-Regular", size: 25)
            let customLabel = UIButton()
            btn.titleLabel?.font = customFont
            btn.setTitle("?", for: .normal)
            btn.setTitleColor(UIColor.green, for: .normal)
            btn.backgroundColor=UIColor.black
            btn.layer.cornerRadius=15
            btn.clipsToBounds=true
            btn.translatesAutoresizingMaskIntoConstraints=false
            btn.addTarget(self, action: #selector(btnExplainAction), for: .touchUpInside)
            return btn
    }()

}

extension QuizVC: QuizCVCellDelegate {
    func didChooseAnswer(btnIndex: Int) {
        let centerIndex = getCenterIndex()
        guard let index = centerIndex else { return }
        questionsArray[index.item].isAnswered=true
        btnExplain.backgroundColor=UIColor.black
        btnExplain.setTitleColor(UIColor.green, for: .normal)
        btnExplain.isEnabled = true;
        if category == "data" {
            if !questionsAnsweredData.contains(questionsArray[index.item].quesNum) {
            questionsAnsweredData.append(questionsArray[index.item].quesNum)
            }
        }
        else if category == "term" {
            if !questionsAnsweredTerm.contains(questionsArray[index.item].quesNum) {
            questionsAnsweredTerm.append(questionsArray[index.item].quesNum)
            }
        }
        else if category == "code" {
            if !questionsAnsweredCode.contains(questionsArray[index.item].quesNum) {
            questionsAnsweredCode.append(questionsArray[index.item].quesNum)
            
            }
            
        }
        let saver = Save()
        saver.saveArray()
        if questionsArray[index.item].correctAns != btnIndex {
            questionsArray[index.item].wrongAns = btnIndex
        }
        if currentQuestionNumber == questionsArray.count {
            btnNext.backgroundColor=UIColor.gray
            btnNext.setTitleColor(UIColor.black, for: .normal)
            btnNext.isEnabled = false;
        }
        myCollectionView.reloadItems(at: [index])
    }

    func getCenterIndex() -> IndexPath? {
        let center = self.view.convert(self.myCollectionView.center, to: self.myCollectionView)
        let index = myCollectionView!.indexPathForItem(at: center)
        print(index ?? "index not found")
        return index
    }

}



















