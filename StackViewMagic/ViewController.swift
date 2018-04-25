//
//  ViewController.swift
//  StackViewMagic
//
//  Created by Renan Benatti Dias on 24/04/18.
//  Copyright © 2018 Blue Origami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var hideBButton: UIButton!
    @IBOutlet weak var hideCButton: UIButton!
    
    private var bIsHidden = false
    private var cIsHidden = false
    
    private var firstView: SimpleView = {
        let view = UINib(nibName: "SimpleView", bundle: nil).instantiate(withOwner: nil, options: nil).first! as! SimpleView
        view.centerLabel.text = "A"
        view.backgroundColor = UIColor(red: 201/255, green: 182/255, blue: 128/255, alpha: 1)
        return view
    }()
    
    private var secondView: SimpleView = {
        let view = UINib(nibName: "SimpleView", bundle: nil).instantiate(withOwner: nil, options: nil).first! as! SimpleView
        view.centerLabel.text = "B"
        view.backgroundColor = UIColor(red: 232/255, green: 236/255, blue: 238/255, alpha: 1)
        return view
    }()
    
    private var thirdView: SimpleView = {
        let view = UINib(nibName: "SimpleView", bundle: nil).instantiate(withOwner: nil, options: nil).first! as! SimpleView
        view.centerLabel.text = "C"
        view.backgroundColor = UIColor(red: 225/255, green: 91/255, blue: 104/255, alpha: 1)
        return view
    }()
    
    private var fourthView: SimpleView = {
        let view = UINib(nibName: "SimpleView", bundle: nil).instantiate(withOwner: nil, options: nil).first! as! SimpleView
        view.centerLabel.text = "D"
        view.backgroundColor = UIColor(red: 172/255, green: 187/255, blue: 240/255, alpha: 1)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stackView.addArrangedSubview(firstView)
        stackView.addArrangedSubview(secondView)
        stackView.addArrangedSubview(thirdView)
        stackView.addArrangedSubview(fourthView)
        
        applyLayout()
    }
    
    func applyLayout() {
        stackView.distribution = .fillEqually
    }
    
    @IBAction func toggleB(_ sender: Any) {
        self.bIsHidden = !self.bIsHidden
        UIView.animate(withDuration: 0.3) {
            self.secondView.isHidden = self.bIsHidden
        }
    }
    
    @IBAction func toggleC(_ sender: Any) {
        self.cIsHidden = !self.cIsHidden
        UIView.animate(withDuration: 0.2) {
            self.thirdView.isHidden = self.cIsHidden
        }
    }
}
