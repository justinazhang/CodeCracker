//
//  QuestionNumber.swift
//  Code Cracker
//
//  Created by Justin Zhang on 6/30/20.
//  Copyright © 2020 Roaz. All rights reserved.
//

import UIKit

class QuestionNumber: UIViewController {
    
    var category:String = ""
    var buttonList = [UIButton]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Pick a Question"
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
    
    @objc func btnBackAction() {
        let v=Categories()
        self.navigationController?.pushViewController(v, animated: true)
    }
    
    func setCategory(cat:String) {
        category = cat
    }
    func setupViews() {
        createAllButtons()
        self.view.addSubview(btnBack)
        btnBack.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40).isActive=true
        btnBack.rightAnchor.constraint(equalTo: self.view.rightAnchor,constant: -30).isActive=true
        btnBack.widthAnchor.constraint(equalToConstant: 30).isActive=true
        btnBack.heightAnchor.constraint(equalToConstant: 30).isActive=true
        btnBack.addTarget(self, action: #selector(btnBackAction), for: .touchUpInside)
    }
    
    func createButtonRow(startY:Int,firstButtonIndex:Int,sHeight:CGFloat,sWidth:CGFloat) {
        self.view.addSubview(buttonList[firstButtonIndex])
        print(sHeight)
        print(sWidth)
        buttonList[firstButtonIndex].topAnchor.constraint(equalTo: self.view.topAnchor, constant:CGFloat(sHeight/8+CGFloat(startY))).isActive=true
        buttonList[firstButtonIndex].leftAnchor.constraint(equalTo: self.view.leftAnchor,constant: sWidth/13).isActive=true
        buttonList[firstButtonIndex].widthAnchor.constraint(equalToConstant: sHeight/10).isActive=true
        buttonList[firstButtonIndex].heightAnchor.constraint(equalToConstant: sHeight/10).isActive=true
        buttonList[firstButtonIndex].addTarget(self, action: #selector(btnfun), for: .touchUpInside)
        createButtonRowHelper(prevButton:buttonList[firstButtonIndex],firstIndex:firstButtonIndex,sHeight:sHeight,sWidth: sWidth)
    }
    
    func createAllButtons() {
        var startIndex = 0
        let screenRect = UIScreen.main.bounds
        let screenWidth = screenRect.size.width
        let screenHeight = screenRect.size.height
        for n in stride(from:0, to: 3 * screenWidth/2, by:screenWidth/3) {
            createButtonRow(startY:Int(n),firstButtonIndex:startIndex,sHeight:screenHeight,sWidth: screenWidth)
            startIndex += 6
        }
        
    }
    
    
    func createButtonRowHelper(prevButton:UIButton,firstIndex:Int,sHeight:CGFloat,sWidth:CGFloat) {
        var oldButton = prevButton
        for n in 1...4 {
        self.view.addSubview(buttonList[n+firstIndex])
        buttonList[n+firstIndex].topAnchor.constraint(equalTo: oldButton.topAnchor).isActive=true
        buttonList[n+firstIndex].leftAnchor.constraint(equalTo: oldButton.leftAnchor,constant: sHeight/7).isActive=true
        buttonList[n+firstIndex].widthAnchor.constraint(equalTo: oldButton.widthAnchor).isActive=true
        buttonList[n+firstIndex].heightAnchor.constraint(equalTo: oldButton.heightAnchor).isActive=true
        buttonList[n+firstIndex].addTarget(self, action: #selector(btnfun), for: .touchUpInside)
        oldButton = buttonList[n+firstIndex]
        }
    }
    
    func createButtons() {
        for n in 1...28 {
            buttonList.append(createButton(index:n))
        }
    }
    
    func createButton(index:Int) -> UIButton{
        let b: UIButton = {
            let buttonTitle = String(index)
            let btn = UIButton()
            let customFont = UIFont(name: "CamingoCode-Regular", size: 25)
            //let customLabel = UIButton()
            btn.titleLabel?.font = customFont
            btn.setTitle(buttonTitle, for: .normal)
            btn.setTitleColor(UIColor.green, for: .normal)
            btn.backgroundColor=UIColor.black
            btn.layer.cornerRadius=15
            btn.clipsToBounds=true
            btn.translatesAutoresizingMaskIntoConstraints=false
            let customFont = UIFont(name: "CamingoCode-Regular", size: 25)
             btn.titleLabel?.font = customFont
            buttonList.append(btn)
            return btn
        }()
        return b
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
 

}


