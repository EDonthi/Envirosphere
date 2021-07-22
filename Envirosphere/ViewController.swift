//
//  ViewController.swift
//  Envirosphere
//
//  Created by Maiya Raghu on 7/20/21.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var leading: NSLayoutConstraint!
    
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    @IBOutlet var table: UITableView!
    var models = [FeedPost]()

    
    var menuOut = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    
    table.register(PostTableViewCell.nib(), forCellReuseIdentifier: PostTableViewCell.identifier)
    table.delegate = self
    table.dataSource = self
    
    models.append(FeedPost(numberOfLikes: 200,
                           username: "@envirosphere",
                           userImageName: "envirospherelogo",
                           postImageName: "enviroart"))
  
    models.append(FeedPost(numberOfLikes: 100,
                           username: "@ecowarriors",
                           userImageName: "bedroom",
                           postImageName: "cow"))
    
    models.append(FeedPost(numberOfLikes: 200,
                           username: "@pinterest",
                           userImageName: "livingroom",
                           postImageName: "posterart"))
    
    models.append(FeedPost(numberOfLikes: 400,
                           username: "@ecoart",
                           userImageName: "bathroom",
                           postImageName: "goldfish"))
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
}

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
        cell.configure(with: models[indexPath.row])
        return cell
}
    
    func tableView(_ tableView: UITableView, didSelectRowAt: IndexPath) {
    
}
    struct FeedPost {
        let numberOfLikes: Int
        let username: String
        let userImageName: String
        let postImageName: String
    }


}
    
