//
//  ViewController.swift
//  SNCView
//
//  Created by Taillook on 12/11/2017.
//  Copyright (c) 2017 Taillook. All rights reserved.
//

import UIKit

class ViewController: SNCViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 0...3 {
            let vc = UIViewController()
            let r: CGFloat = CGFloat(arc4random_uniform(255)+1) / 255.0
            let g: CGFloat = CGFloat(arc4random_uniform(255)+1) / 255.0
            let b: CGFloat = CGFloat(arc4random_uniform(255)+1) / 255.0
            let color: UIColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
            vc.view.backgroundColor = color
            vcArray.append(vc)
        }
        self.setViewControllers([vcArray[1]], direction: .reverse, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

