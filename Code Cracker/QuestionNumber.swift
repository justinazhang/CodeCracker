//
//  QuestionNumber.swift
//  Code Cracker
//
//  Created by Justin Zhang on 6/30/20.
//  Copyright © 2020 Justin Zhang Justin Kaufman. All rights reserved.
//

import UIKit

class QuestionNumber: UIViewController {
    
    var category:String = ""
    var buttonList = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Question Number Screen"
        self.view.backgroundColor=UIColor.darkGray
        createButtons()
        setupViews()
    }
    
    @objc func btnfun(sender: UIButton) {
        let questionNum = Int(sender.currentTitle!)! - 1
        let v=QuizVC()
        v.setQuestionStart(questionNum:questionNum)
        v.setCategory(cat:category)
        self.navigationController?.pushViewController(v, animated: true)
    }
    
    func setCategory(cat:String) {
        category = cat
    }
    func setupViews() {
        self.view.addSubview(lblTitle)
        lblTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive=true
        lblTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        lblTitle.widthAnchor.constraint(equalToConstant: 450).isActive=true //change
        lblTitle.heightAnchor.constraint(equalToConstant: 80).isActive=true //change
        self.view.addSubview(buttonList[0])
        buttonList[0].topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -50).isActive=true
        buttonList[0].centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        buttonList[0].widthAnchor.constraint(equalToConstant: 175).isActive=true
        buttonList[0].heightAnchor.constraint(equalToConstant: 80).isActive=true
        buttonList[0].addTarget(self, action: #selector(btnfun), for: .touchUpInside)
        self.view.addSubview(btnQ2)
        btnQ2.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 50).isActive=true
        btnQ2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnQ2.widthAnchor.constraint(equalToConstant: 175).isActive=true
        btnQ2.heightAnchor.constraint(equalToConstant: 80).isActive=true
        btnQ2.addTarget(self, action: #selector(btnfun), for: .touchUpInside)
        self.view.addSubview(btnQ3)
        btnQ3.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 150).isActive=true
        btnQ3.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnQ3.widthAnchor.constraint(equalToConstant: 175).isActive=true
        btnQ3.heightAnchor.constraint(equalToConstant: 80).isActive=true
        btnQ3.addTarget(self, action: #selector(btnfun), for: .touchUpInside)
    }
    
    func createButtonRow() {
        
    }
    
    func createButtons() {
        for n in 1...4 {
            buttonList.append(createButton(index:n))
        }
    }
    
    func createButton(index:Int) -> UIButton{
        let b: UIButton = {
            let buttonTitle = String(index)
            let btn = UIButton()
            btn.setTitle(buttonTitle, for: .normal)
            btn.setTitleColor(UIColor.green, for: .normal)
            btn.backgroundColor=UIColor.black
            btn.layer.cornerRadius=15
            btn.clipsToBounds=true
            btn.translatesAutoresizingMaskIntoConstraints=false
            buttonList.append(btn)
            return btn
        }()
        return b
    }
    
    let lblTitle: UILabel = {
        let lbl=UILabel()
        lbl.text="Choose a Category"
        lbl.textColor=UIColor.green
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 30)
        lbl.numberOfLines=2
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    

    let btnQ1: UIButton = {
        let btn = UIButton()
        btn.setTitle("1", for: .normal)
        btn.setTitleColor(UIColor.green, for: .normal)
        btn.backgroundColor=UIColor.black
        btn.layer.cornerRadius=15
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
    let btnQ2: UIButton = {
        let btn = UIButton()
        btn.setTitle("2", for: .normal)
        btn.setTitleColor(UIColor.green, for: .normal)
        btn.backgroundColor=UIColor.black
        btn.layer.cornerRadius=15
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
    let btnQ3: UIButton = {
        let btn = UIButton()
        btn.setTitle("3", for: .normal)
        btn.setTitleColor(UIColor.green, for: .normal)
        btn.backgroundColor=UIColor.black
        btn.layer.cornerRadius=15
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
    
}


