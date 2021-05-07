//
//  FirstViewController.swift
//  Practice
//
//  Created by riku on 2021/05/07.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = "First!!"
    }
}
