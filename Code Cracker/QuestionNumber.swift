//
//  QuestionNumber.swift
//  Code Cracker
//
//  Created by Justin Zhang on 6/30/20.
//  Copyright © 2020 Justin Zhang Justin Kaufman. All rights reserved.
//

import UIKit

class QuestionNumber: UIViewController {
    
    var category: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Question Number Screen"
        setupViews()
    }
    
    func setCategory(cat: String) {
        category = cat
    }
    
    @objc func btnQuestion1func() {
        let v=QuizVC()
        v.setQuestionStart(questionNum: 0)
        v.setCategory(cat: category)
        self.navigationController?.pushViewController(v, animated: true)
    
    }
    
    @objc func btnQuestion2func() {
        let v=QuizVC()
        v.setQuestionStart(questionNum: 1)
        v.setCategory(cat: category)
        self.navigationController?.pushViewController(v, animated: true)
    
    }
    
    @objc func btnQuestion3func() {
        let v=QuizVC()
        v.setQuestionStart(questionNum: 2)
        v.setCategory(cat: category)
        self.navigationController?.pushViewController(v, animated: true)
    
    }
    
    func setupViews() {
        self.view.addSubview(lblTitle)
        lblTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive=true
        lblTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        lblTitle.widthAnchor.constraint(equalToConstant: 450).isActive=true //change
        lblTitle.heightAnchor.constraint(equalToConstant: 80).isActive=true //change
        self.view.addSubview(btnQuestion1)
        btnQuestion1.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -30).isActive=true
        btnQuestion1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnQuestion1.widthAnchor.constraint(equalToConstant: 150).isActive=true
        btnQuestion1.heightAnchor.constraint(equalToConstant: 50).isActive=true
        btnQuestion1.addTarget(self, action: #selector(btnQuestion1func), for: .touchUpInside)
        self.view.addSubview(btnQuestion2)
        btnQuestion2.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 50).isActive=true
        btnQuestion2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnQuestion2.widthAnchor.constraint(equalToConstant: 150).isActive=true
        btnQuestion2.heightAnchor.constraint(equalToConstant: 50).isActive=true
       btnQuestion2.addTarget(self, action: #selector(btnQuestion2func), for: .touchUpInside)
        self.view.addSubview(btnQuestion3)
        btnQuestion3.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 130).isActive=true
        btnQuestion3.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnQuestion3.widthAnchor.constraint(equalToConstant: 150).isActive=true
        btnQuestion3.heightAnchor.constraint(equalToConstant: 50).isActive=true
        btnQuestion3.addTarget(self, action: #selector(btnQuestion3func), for: .touchUpInside)
    }

    
    let lblTitle: UILabel = {
        let lbl=UILabel()
        lbl.text="Choose a Question Number"
        lbl.textColor=UIColor.green
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 30)
        lbl.numberOfLines=2
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let btnQuestion1: UIButton = {
        let btn = UIButton()
        btn.setTitle("1", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor=UIColor.orange
        btn.layer.cornerRadius=5
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
    let btnQuestion2: UIButton = {
        let btn = UIButton()
        btn.setTitle("2", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor=UIColor.orange
        btn.layer.cornerRadius=5
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
    let btnQuestion3: UIButton = {
        let btn = UIButton()
        btn.setTitle("3", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor=UIColor.orange
        btn.layer.cornerRadius=5
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
}

