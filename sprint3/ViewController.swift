//
//  ViewController.swift
//  sprint3
//
//  Created by Андрей Парамонов on 28.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    
    private var clicksCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RefreshView(clicks: clicksCount)
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        clicksCount+=1
        RefreshView(clicks: clicksCount)
    }
    
    private func RefreshView(clicks: Int){
        countLabel.text = String(clicksCount)
        countLabel.sizeToFit()
    }
}

