//
//  ViewController.swift
//  Code Cracker
//
//  Created by Justin Zhang on 6/27/20.
//  Copyright © 2020 Roaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var window: UIWindow?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Code Cracker"
        self.view.backgroundColor=UIColor.darkGray //change
        self.navigationController?.navigationBar.isHidden = true
        let saver = Save()
        saver.loadArray()
        setupViews()
        
    }
    
    var Fonts = [
        "CamingoCode-Regular"
    ]
    
    @objc func btnGetStartedAction() {
        let v=Categories()
        self.navigationController?.pushViewController(v, animated: true)
    }
    
    func setupViews() {
        self.view.addSubview(lblTitle)
        lblTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive=true
        lblTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        lblTitle.widthAnchor.constraint(equalToConstant: 450).isActive=true //change
        lblTitle.heightAnchor.constraint(equalToConstant: 80).isActive=true //change
        
        self.view.addSubview(btnGetStarted)
        btnGetStarted.heightAnchor.constraint(equalToConstant: 100).isActive=true //change
        btnGetStarted.widthAnchor.constraint(equalToConstant: 200).isActive=true //change
        btnGetStarted.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnGetStarted.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 50).isActive=true
    }
    
    let lblTitle: UILabel = {
        let lbl=UILabel()
        let customFont = UIFont(name: "CamingoCode-Regular", size: 50)
        let customLabel = UILabel()
        customLabel.font = customFont
        lbl.text="Code Cracker"
        lbl.textColor=UIColor.green //change
        lbl.textAlignment = .center
        lbl.font = customFont//change
        lbl.numberOfLines=2
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let btnGetStarted: UIButton = {
        let btn=UIButton()
        let customFont = UIFont(name: "CamingoCode-Regular", size: 31)
        let customLabel = UIButton()
        //customLabel.font = customFont
        btn.setTitle("Get Started", for: .normal)
        btn.titleLabel?.font = customFont
        btn.setTitleColor(UIColor.green, for: .normal) //change
        btn.backgroundColor=UIColor.black //change
        btn.layer.cornerRadius=25
        btn.layer.masksToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        btn.addTarget(self, action: #selector(btnGetStartedAction), for: .touchUpInside)
        return btn
    }()
}

