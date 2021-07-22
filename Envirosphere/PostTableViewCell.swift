//
//  PostTableViewCell.swift
//  pictureFeed
//
//  Created by  Scholar on 7/21/21.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var postImageView: UIImageView!
    @IBOutlet var usernameLabel: UILabel!
    @IBOutlet var likesLabel: Int!
    @IBOutlet var captionLabel: String!

    static let identifier = "PostTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "PostTableViewCell",
                     bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(with model: FeedPost) {
        //self.likesLabel.text = "\(model.numberOfLikes) Likes"
        self.usernameLabel.text = model.username
        self.userImageView.image = UIImage(named: model.userImageName)
        self.postImageView.image = UIImage(named: model.postImageName)
    }
    
}
