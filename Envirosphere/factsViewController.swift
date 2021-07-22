//
//  ViewController.swift
//  FakeFinalProj
//
//  Created by Maiya Raghu on 7/20/21.
//

import UIKit

class factsViewController: UIViewController {
    
    @IBAction func funFactButton(_ sender: UIButton) {
        funFactLabel.text = factModel.getRandomFact ()
    }
    
    @IBOutlet var funFactLabel: UILabel!
    let factModel = FactModel ()

    
    
    override func viewDidLoad() {
        funFactLabel.text = factModel.getRandomFact ()

    }
   

}


import GameKit

struct FactModel {
    let facts = [
        "Communities of color have higher exposure rates to air pollution than their white, non-Hispanic counterparts.",
        "Landfills, hazardous waste sites, and other industrial facilities are most often located in communities of color.",
        "Lead poisoning disproportionately affects children of color.",
        "Climate change disproportionately affects low-income communities and communities of color.",
        "Water contamination plagues low-income areas and communities of color across the nation.",
        "A 1983 study by the U.S. Congress's General Accounting Office found that in eight southeastern states, 75% of the hazardous waste landfill sites were in low-income communities of color. Many people in these communities could not afford or would not feel welcome in less polluted neighborhoods.",
        "According to a 2014 study, minority neighborhoods have far less access to green spaces than communities that are primarily White."]
    
    func getRandomFact () -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
        
        return facts[randomNumber]
    }
}
