//
//  ViewController.swift
//  sprint3
//
//  Created by Андрей Парамонов on 28.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak private var countLabel: UILabel!
    @IBOutlet weak private var changeButton: UIButton!
    
    private var clicksCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshView(clicks: clicksCount)
    }
    
    @IBAction private func buttonDidTap(_ sender: Any) {
        clicksCount+=1
        refreshView(clicks: clicksCount)
    }
    
    private func refreshView(clicks: Int){
        countLabel.text = String(clicksCount)
        countLabel.sizeToFit()
    }
}

