//
//  ViewController.swift
//  pictureFeed
//
//  Created by  Scholar on 7/21/21.
//


import UIKit

class pictureViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    
    var models = [FeedPost]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
}

struct FeedPost {
    let numberOfLikes: Int
    let username: String
    let userImageName: String
    let postImageName: String
}
