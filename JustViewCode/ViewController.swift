//
//  ViewController.swift
//  JustViewCode
//
//  Created by Jonattan Moises Sousa on 07/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        let viewNova = UIView(frame: UIScreen.main.bounds)
        viewNova.backgroundColor = .red
        self.view = viewNova
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

