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
    
    @objc func btnBackAction() {
        let v=ViewController()
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
        btnPython.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -75).isActive=true
        btnPython.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnPython.widthAnchor.constraint(equalToConstant: 250).isActive=true
        btnPython.heightAnchor.constraint(equalToConstant: 125).isActive=true
        btnPython.addTarget(self, action: #selector(btnPythonAction), for: .touchUpInside)
        self.view.addSubview(btnJava)
        btnJava.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 100).isActive=true
        btnJava.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnJava.widthAnchor.constraint(equalToConstant: 250).isActive=true
        btnJava.heightAnchor.constraint(equalToConstant: 125).isActive=true
        btnJava.addTarget(self, action: #selector(btnJavaAction), for: .touchUpInside)
        self.view.addSubview(btnData)
        btnData.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 275).isActive=true
        btnData.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnData.widthAnchor.constraint(equalToConstant: 250).isActive=true
        btnData.heightAnchor.constraint(equalToConstant: 125).isActive=true
        btnData.addTarget(self, action: #selector(btnDataAction), for: .touchUpInside)
        self.view.addSubview(btnBack)
        btnBack.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40).isActive=true
        btnBack.rightAnchor.constraint(equalTo: self.view.rightAnchor,constant: -30).isActive=true
        btnBack.widthAnchor.constraint(equalToConstant: 30).isActive=true
        btnBack.heightAnchor.constraint(equalToConstant: 30).isActive=true
        btnBack.addTarget(self, action: #selector(btnBackAction), for: .touchUpInside)
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
    
    let lblTitle: UILabel = {
        let lbl=UILabel()
        let customFont = UIFont(name: "CamingoCode-Regular", size: 43)
        lbl.text="Choose a Category"
        lbl.textColor=UIColor.green
        lbl.textAlignment = .center
        lbl.font = customFont
        lbl.numberOfLines=2
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let btnPython: UIButton = {
        let btn = UIButton()
        let customFont = UIFont(name: "CamingoCode-Regular", size: 25)
        let customLabel = UIButton()
        btn.titleLabel?.font = customFont
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
        let customFont = UIFont(name: "CamingoCode-Regular", size: 25)
        let customLabel = UIButton()
        btn.titleLabel?.font = customFont
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
        let customFont = UIFont(name: "CamingoCode-Regular", size: 20)
        let customLabel = UIButton()
        btn.titleLabel?.font = customFont
        btn.setTitle("Data Structures", for: .normal)
        btn.setTitleColor(UIColor.green, for: .normal)
        btn.backgroundColor=UIColor.black
        btn.layer.cornerRadius=15
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
}
