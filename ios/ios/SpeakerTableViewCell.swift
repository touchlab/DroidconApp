//
//  SpeakerTableViewCell.swift
//  ios
//
//  Created by Sahil Ishar on 3/15/16.
//  Copyright © 2016 Kevin Galligan. All rights reserved.
//

import UIKit

class SpeakerTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var infoLabel : UILabel!
    @IBOutlet weak var imgButton : UIButton!
    
    func loadInfo(name: String, info: String, imageUrlString: String) {
        nameLabel.text = name
        infoLabel.text = info
        if let url = NSURL(string: imageUrlString) {
            if let data = NSData(contentsOfURL: url) {
                imgButton.setImage(UIImage(data: data), forState: .Normal)
            }        
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgButton.layer.cornerRadius = 40.0
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}