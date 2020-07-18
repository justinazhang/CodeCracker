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
    
    
    @objc func btndataAction() {
        let v=QuestionNumber()
        v.setCategory(cat: "data")
        self.navigationController?.pushViewController(v, animated: true)
       
    }
    
    @objc func btnBackAction() {
        let v=ViewController()
        self.navigationController?.pushViewController(v, animated: true)
    }
    
    @objc func btntermAction() {
        let v=QuestionNumber()
        v.setCategory(cat: "term")
        self.navigationController?.pushViewController(v, animated: true)
        
    }
    
    @objc func btnDataAction() {
        let v=QuestionNumber()
        v.setCategory(cat: "Data")
        self.navigationController?.pushViewController(v, animated: true)
    }
    
    func setupViews() {
        self.view.addSubview(lblTitle)
        lblTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive=true
        lblTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        lblTitle.widthAnchor.constraint(equalToConstant: 450).isActive=true //change
        lblTitle.heightAnchor.constraint(equalToConstant: 80).isActive=true //change
        self.view.addSubview(btndata)
        btndata.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -120).isActive=true
        btndata.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btndata.widthAnchor.constraint(equalToConstant: 220).isActive=true
        btndata.heightAnchor.constraint(equalToConstant: 110).isActive=true
        btndata.addTarget(self, action: #selector(btndataAction), for: .touchUpInside)
        self.view.addSubview(btnterm)
        btnterm.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 40).isActive=true
        btnterm.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnterm.widthAnchor.constraint(equalToConstant: 220).isActive=true
        btnterm.heightAnchor.constraint(equalToConstant: 110).isActive=true
        btnterm.addTarget(self, action: #selector(btntermAction), for: .touchUpInside)
        self.view.addSubview(btnData)
        btnData.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 200).isActive=true
        btnData.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnData.widthAnchor.constraint(equalToConstant: 220).isActive=true
        btnData.heightAnchor.constraint(equalToConstant: 110).isActive=true
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
        let customFont = UIFont(name: "CamingoCode-Regular", size: 38)
        lbl.text="Choose a Category"
        lbl.textColor=UIColor.green
        lbl.textAlignment = .center
        lbl.font = customFont
        lbl.numberOfLines=2
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let btndata: UIButton = {
        let btn = UIButton()
        let customFont = UIFont(name: "CamingoCode-Regular", size: 20)
        let customLabel = UIButton()
        btn.titleLabel?.font = customFont
        btn.setTitle("  Data Structures \n    Algorithms", for: .normal)
        btn.titleLabel?.lineBreakMode = .byWordWrapping
        btn.titleLabel?.numberOfLines = 2
        btn.setTitleColor(UIColor.green, for: .normal)
        btn.backgroundColor=UIColor.black
        btn.layer.cornerRadius=15
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
    let btnterm: UIButton = {
        let btn = UIButton()
        let customFont = UIFont(name: "CamingoCode-Regular", size: 20)
        let customLabel = UIButton()
        btn.titleLabel?.font = customFont
        btn.setTitle("Techincal Terms", for: .normal)
        btn.setTitleColor(UIColor.green, for: .normal)
        btn.backgroundColor=UIColor.black
        btn.layer.cornerRadius=15
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
    let btnData: UIButton = {
        let btn = UIButton()
        let customFont = UIFont(name: "CamingoCode-Regular", size: 26)
        let customLabel = UIButton()
        btn.titleLabel?.font = customFont
        btn.setTitle("Coding", for: .normal)
        btn.setTitleColor(UIColor.green, for: .normal)
        btn.backgroundColor=UIColor.black
        btn.layer.cornerRadius=15
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
}
