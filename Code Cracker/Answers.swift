//
//  Answers.swift
//  Code Cracker
//
//  Created by Justin Zhang on 6/27/20.
//  Copyright © 2020 REZEN. All rights reserved.
//


import UIKit

protocol QuizCVCellDelegate: class {
    func didChooseAnswer(btnIndex: Int)
}

class QuizCVCell: UICollectionViewCell {
    
    var btn1: UIButton!
    var btn2: UIButton!
    var btn3: UIButton!
    var btn4: UIButton!
    var btnsArray = [UIButton]()
    
    
    weak var delegate: QuizCVCellDelegate?
    
    var question: Question? {
        didSet {
            guard let unwrappedQue = question else { return }
            lblQue.text = unwrappedQue.questionText
            if(unwrappedQue.imgName != "None") {
            imgView.image = UIImage(named: unwrappedQue.imgName)
            }
            btn1.setTitle(unwrappedQue.options[0], for: .normal)
            btn2.setTitle(unwrappedQue.options[1], for: .normal)
            btn3.setTitle(unwrappedQue.options[2], for: .normal)
            btn4.setTitle(unwrappedQue.options[3], for: .normal)
                
            
            if unwrappedQue.isAnswered {
                btnsArray[unwrappedQue.correctAns].setTitleColor(UIColor.green, for: .normal)
                if unwrappedQue.wrongAns >= 0 {
                    btnsArray[unwrappedQue.wrongAns].setTitleColor(UIColor.red, for: .normal)
                }
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        btnsArray = [btn1, btn2, btn3, btn4]
    }
    
    
    @objc func btnOptionAction(sender: UIButton) {
        guard let unwrappedQue = question else { return }
        if !unwrappedQue.isAnswered {
            delegate?.didChooseAnswer(btnIndex: sender.tag)
        }
    }
    
    override func prepareForReuse() {
        btn1.setTitleColor(UIColor.white, for: .normal)
        
        btn2.setTitleColor(UIColor.white, for: .normal)
        btn3.setTitleColor(UIColor.white, for: .normal)
        btn4.setTitleColor(UIColor.white, for: .normal)
    }
    
    func setupViews() {

        addSubview(imgView)
        let screenRect = UIScreen.main.bounds
        let screenWidth = screenRect.size.width
        let screenHeight = screenRect.size.height
        imgView.topAnchor.constraint(equalTo: self.topAnchor, constant: 50).isActive=true
        imgView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive=true
        imgView.widthAnchor.constraint(equalToConstant: screenWidth - 20).isActive=true
        imgView.heightAnchor.constraint(equalToConstant:    screenHeight / 2 ).isActive=true
        addSubview(lblQue)
        lblQue.topAnchor.constraint(equalTo: self.topAnchor, constant: 50).isActive=true
        lblQue.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive=true
        lblQue.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12).isActive=true
        lblQue.heightAnchor.constraint(equalToConstant: 150).isActive=true
        
        
        let btnWidth: CGFloat = 175
        let btnHeight: CGFloat = 100
        btn1 = getButton(tag: 0)
        addSubview(btn1)
        NSLayoutConstraint.activate([btn1.topAnchor.constraint(equalTo: self.bottomAnchor, constant: -350), btn1.rightAnchor.constraint(equalTo: self.centerXAnchor, constant: -10), btn1.widthAnchor.constraint(equalToConstant: btnWidth), btn1.heightAnchor.constraint(equalToConstant: btnHeight)])
        btn1.addTarget(self, action: #selector(btnOptionAction), for: .touchUpInside)
        
        btn2 = getButton(tag: 1)
        addSubview(btn2)
        NSLayoutConstraint.activate([btn2.topAnchor.constraint(equalTo: btn1.topAnchor), btn2.leftAnchor.constraint(equalTo: self.centerXAnchor, constant: 10), btn2.widthAnchor.constraint(equalToConstant: btnWidth), btn2.heightAnchor.constraint(equalToConstant: btnHeight)])
        btn2.addTarget(self, action: #selector(btnOptionAction), for: .touchUpInside)
        
        btn3 = getButton(tag: 2)
        addSubview(btn3)
        NSLayoutConstraint.activate([btn3.topAnchor.constraint(equalTo: btn1.bottomAnchor, constant: 20), btn3.rightAnchor.constraint(equalTo: self.centerXAnchor, constant: -10), btn3.widthAnchor.constraint(equalToConstant: btnWidth), btn3.heightAnchor.constraint(equalToConstant: btnHeight)])
        btn3.addTarget(self, action: #selector(btnOptionAction), for: .touchUpInside)
        
        btn4 = getButton(tag: 3)
        addSubview(btn4)
        NSLayoutConstraint.activate([btn4.topAnchor.constraint(equalTo: btn3.topAnchor), btn4.leftAnchor.constraint(equalTo: self.centerXAnchor, constant: 10), btn4.widthAnchor.constraint(equalToConstant: btnWidth), btn4.heightAnchor.constraint(equalToConstant: btnHeight)])
        btn4.addTarget(self, action: #selector(btnOptionAction), for: .touchUpInside)
    }
    
    func getButton(tag: Int) -> UIButton {
        let btn=UIButton()
        btn.tag=tag
        btn.setTitle("Option", for: .normal)
        btn.titleLabel?.adjustsFontSizeToFitWidth = true;
        btn.titleLabel?.numberOfLines = 3;
        btn.titleEdgeInsets = UIEdgeInsets(top: 10,left: 10,bottom: 10,right: 10)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor=UIColor.black
        btn.layer.borderWidth=1
        btn.layer.borderColor=UIColor.darkGray.cgColor
        btn.layer.cornerRadius=15
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }
    
    
    
    let imgView: UIImageView = {
        let v=UIImageView()
    
        v.contentMode = .scaleAspectFit
        v.translatesAutoresizingMaskIntoConstraints=false
        return v
    }()
    
    let lblQue: UILabel = {
        let lbl=UILabel()
        lbl.text="Q"
        lbl.textColor=UIColor.white
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.numberOfLines=15
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
