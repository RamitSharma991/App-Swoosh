//
//  ViewController.swift
//  App-Swoosh
//
//  Created by Ramit sharma on 28/09/17.
//  Copyright © 2017 Ramit sharma. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    @IBOutlet weak var swoosh: UIImageView!
    
    @IBOutlet weak var bgImg: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onNextTapped(_ sender: Any) {
    }
    
   @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboard) {
        
        
    }
}
