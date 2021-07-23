//
//  ViewController.swift
//  Envirosphere
//
//  Created by Maiya Raghu on 7/20/21.
//

import UIKit


class ViewController: UIViewController {
   // @IBAction func funFactButton(_ sender: UIButton) {
  //  }
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree:UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    
    
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    
    
    @IBOutlet weak var buttonNine: UIButton!
    @IBOutlet weak var buttonTen: UIButton!
    @IBOutlet weak var buttonEleven: UIButton!
    @IBOutlet weak var buttonTwelve: UIButton!
   
    @IBOutlet weak var leading: NSLayoutConstraint!
    
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    var menuOut = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.cornerRadius = 15.0
        buttonTwo.layer.cornerRadius = 15.0
        buttonThree.layer.cornerRadius = 15.0
        buttonFour.layer.cornerRadius = 15.0
        buttonFive.layer.cornerRadius = 15.0
        buttonSix.layer.cornerRadius = 15.0
        buttonSeven.layer.cornerRadius = 15.0
        buttonEight.layer.cornerRadius = 15.0
        buttonNine.layer.cornerRadius = 15.0
        buttonTen.layer.cornerRadius = 15.0
        buttonEleven.layer.cornerRadius = 15.0
        buttonTwelve.layer.cornerRadius = 15.0

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
    
    @IBAction func LinkButton(_ sender: UIButton) {
        if let url = URL(string: "https://www.epa.gov/environmentaljustice/learn-about-environmental-justice") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
      }
      }
    
    @IBAction func LinkButtonTwo(_ sender: UIButton) {
        if let url = URL(string: "https://www.learningforjustice.org/classroom-resources/lessons/analyzing-environmental-justice") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
      }
      }
    
    @IBAction func LinkButtonThree(_ sender: UIButton) {
        if let url = URL(string: "https://www.weforum.org/agenda/2020/07/what-is-environmental-racism-pollution-covid-systemic/") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
      }
      }
    
    @IBAction func LinkButtonFour(_ sender: UIButton) {
        if let url = URL(string: "http://news.unm.edu/news/the-complicated-history-of-environmental-racism") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
      }
      }
    
    @IBAction func LinkButtonFive(_ sender: UIButton) {
        if let url = URL(string: "https://www.weact.org/home-3-2/getinvolved/donate/") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
      }
      }
    
    @IBAction func LinkButtonSix(_ sender: UIButton) {
        if let url = URL(string: "https://www.ienearth.org/") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
      }
      }
    
    @IBAction func LinkButtonSeven(_ sender: UIButton) {
        if let url = URL(string: "https://www.blackmillennials4flint.org/") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
      }
      }
    
    @IBAction func LinkButtonEight(_ sender: UIButton) {
        if let url = URL(string: "https://www.labor4sustainability.org/") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
      }
      }
    
    @IBAction func LinkButtonNine(_ sender: UIButton) {
        if let url = URL(string: "https://actionnetwork.org/petitions/sign-the-petition-demand-congress-address-environmental-racism-and-climate-equity?nowrapper=true") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
      }
      }
    
    @IBAction func LinkButtonTen(_ sender: UIButton) {
        if let url = URL(string: "https://www.change.org/t/environmental-justice-en-us") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
      }
      }
    
    @IBAction func LinkButtonEleven(_ sender: UIButton) {
        if let url = URL(string: "https://ejfoundation.org/get-involved/sign-a-petition") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
      }
      }
    
    @IBAction func LinkButtonTwelve(_ sender: UIButton) {
        if let url = URL(string: "https://protectnepa.org/environmental-justice/") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
      }
      }
//    @IBAction func LinkButton(_ sender: UIButton){
//        if let url = NSURL(string: "http://www.google.com){
//            UIApplication.shared.open(url as URL)
//    }
    
}



////WEBSITES TO LINK WHEN I FIGURE OUT HOW TO LINK A URL
//LEARN
//1.https://www.epa.gov/environmentaljustice/learn-about-environmental-justice
//2.https://www.learningforjustice.org/classroom-resources/lessons/analyzing-environmental-justice
//3.https://www.weforum.org/agenda/2020/07/what-is-environmental-racism-pollution-covid-systemic/
//4.http://news.unm.edu/news/the-complicated-history-of-environmental-racism

//DONATE
//1. https://www.weact.org/home-3-2/getinvolved/donate/
//2. https://www.ienearth.org/
//3. https://www.blackmillennials4flint.org/
//4. https://www.labor4sustainability.org/

//PETITIONS:
//1.https://actionnetwork.org/petitions/sign-the-petition-demand-congress-address-environmental-racism-and-climate-equity?nowrapper=true
//2.https://www.change.org/t/environmental-justice-en-us
//3. https://ejfoundation.org/get-involved/sign-a-petition
//4. https://protectnepa.org/environmental-justice/


    
    
    
    
    
    

