//
//  ViewController.swift
//  Envirosphere
//
//  Created by Maiya Raghu on 7/20/21.
//

import UIKit


class ViewController: UIViewController {
    @IBAction func funFactButton(_ sender: UIButton) {
    }
    
    @IBOutlet weak var leading: NSLayoutConstraint!
    
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    var menuOut = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func menuTapped(_ sender: Any) {
        
        if menuOut == false {
            leading.constant = 150
            trailing.constant = -150
            menuOut = true
        } else {
            leading.constant = 0
            trailing.constant = 0
            menuOut = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            print ("The animation is complete!")
        }
    }
    
    
    
    
    
    
    
    
    

}
