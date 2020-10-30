//
//  ViewController.swift
//  BottomButtons
//
//  Created by Meet Thanki on 30/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bottomView : UIView!
    @IBOutlet weak var mainButton : UIButton!
    let showBtn = UIButton()
    let nextBtn = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomView.addSubview(showBtn)
        bottomView.addSubview(nextBtn)
        setupButtonTwo()
        
    }
    
    func setupButtonTwo(){
    
        showBtn.setTitle("Show Ans", for: .normal)
        showBtn.backgroundColor = UIColor.blue
        showBtn.layer.cornerRadius = 5
        showBtn.translatesAutoresizingMaskIntoConstraints = false
        showBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        showBtn.widthAnchor.constraint(equalToConstant: 100).isActive = true
        showBtn.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 20).isActive = true
        showBtn.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 20).isActive = true
        
        nextBtn.setTitle("Next", for: .normal)
        nextBtn.backgroundColor = .red
        nextBtn.layer.cornerRadius = 5
        nextBtn.translatesAutoresizingMaskIntoConstraints = false
        nextBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextBtn.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nextBtn.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 20).isActive = true
        nextBtn.rightAnchor.constraint(equalTo: bottomView.rightAnchor,constant: -20).isActive = true
        
    }
    
    func setupOneButton(){
        nextBtn.translatesAutoresizingMaskIntoConstraints = false
        nextBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextBtn.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 20).isActive = true
        nextBtn.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 20).isActive = true
        nextBtn.rightAnchor.constraint(equalTo: bottomView.rightAnchor,constant: -20).isActive = true
    }
    
    @IBAction func ChangeDesign (_ sender : UIButton){
        
        if mainButton.titleLabel?.text == "OneButton" {
            //removing all the constraints
            showBtn.deactivateAllConstraints()
            nextBtn.deactivateAllConstraints()
            
            setupOneButton()
            
            mainButton.setTitle("TwoButtons", for: .normal)
            
        }else{
            showBtn.deactivateAllConstraints()
            nextBtn.deactivateAllConstraints()
            
            setupButtonTwo()
            
            mainButton.setTitle("OneButton", for: .normal)
        }
        
        
    
        
    }


}

