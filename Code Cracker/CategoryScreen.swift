//
//  CategoryScreen.swift
//  Code Cracker
//
//  Created by Justin Zhang on 6/28/20.
//  Copyright © 2020 Justin Zhang Justin Kaufman. All rights reserved.
//

import UIKit

class Categories: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Category Screen"
        self.view.backgroundColor=UIColor.darkGray
    
        setupViews()
    }
    
    @objc func btnPythonAction() {
        let v=QuestionNumber()
        v.setCategory(cat: "Python")
        self.navigationController?.pushViewController(v, animated: true)
       
    }
    
    @objc func btnJavaAction() {
        let v=QuestionNumber()
        v.setCategory(cat: "Java")
        self.navigationController?.pushViewController(v, animated: true)
        
    }
    
    @objc func btnDataAction() {
        let v=QuestionNumber()
        v.setCategory(cat: "Data")
        self.navigationController?.pushViewController(v, animated: true)
    }
    
    func setupViews() {
        self.view.addSubview(lblTitle)
        lblTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive=true
        lblTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        lblTitle.widthAnchor.constraint(equalToConstant: 450).isActive=true //change
        lblTitle.heightAnchor.constraint(equalToConstant: 80).isActive=true //change
        self.view.addSubview(btnPython)
        btnPython.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -50).isActive=true
        btnPython.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnPython.widthAnchor.constraint(equalToConstant: 175).isActive=true
        btnPython.heightAnchor.constraint(equalToConstant: 80).isActive=true
        btnPython.addTarget(self, action: #selector(btnPythonAction), for: .touchUpInside)
        self.view.addSubview(btnJava)
        btnJava.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 50).isActive=true
        btnJava.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnJava.widthAnchor.constraint(equalToConstant: 175).isActive=true
        btnJava.heightAnchor.constraint(equalToConstant: 80).isActive=true
        btnJava.addTarget(self, action: #selector(btnJavaAction), for: .touchUpInside)
        self.view.addSubview(btnData)
        btnData.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 150).isActive=true
        btnData.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnData.widthAnchor.constraint(equalToConstant: 175).isActive=true
        btnData.heightAnchor.constraint(equalToConstant: 80).isActive=true
        btnData.addTarget(self, action: #selector(btnDataAction), for: .touchUpInside)
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
    
    let btnPython: UIButton = {
        let btn = UIButton()
        btn.setTitle("Python", for: .normal)
        btn.setTitleColor(UIColor.green, for: .normal)
        btn.backgroundColor=UIColor.black
        btn.layer.cornerRadius=15
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
    let btnJava: UIButton = {
        let btn = UIButton()
        btn.setTitle("Java", for: .normal)
        btn.setTitleColor(UIColor.green, for: .normal)
        btn.backgroundColor=UIColor.black
        btn.layer.cornerRadius=15
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
    let btnData: UIButton = {
        let btn = UIButton()
        btn.setTitle("Data Structures", for: .normal)
        btn.setTitleColor(UIColor.green, for: .normal)
        btn.backgroundColor=UIColor.black
        btn.layer.cornerRadius=15
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
}

