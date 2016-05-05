//
//  EventTableViewCell.swift
//  ios
//
//  Created by Sahil Ishar on 3/15/16.
//  Copyright © 2016 Kevin Galligan. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel : UILabel!
    @IBOutlet weak var descriptionLabel : UILabel!
    @IBOutlet weak var timeInfoLabel : UILabel!
    @IBOutlet weak var rsvpButton : UIButton!
    
    var event: DCDEvent!
    var eventDetailPresenter: DCPEventDetailPresenter!
    
    func loadInfo(title: String, description: String, track: String, time: String, event: DCDEvent, eventDetailPresenter: DCPEventDetailPresenter) {
        self.event = event
        self.eventDetailPresenter = eventDetailPresenter
        titleLabel.text = title
        descriptionLabel.text = description
        timeInfoLabel.text = "Track " + track + ", " + time
        
        titleLabel.sizeToFit()
        descriptionLabel.sizeToFit()
        
        updateUi()
        rsvpButton.sizeToFit()
    }
    
    func updateUi(){
        rsvpButton.setTitle(event.isRsvped() ? "Un-Rsvp": "Rsvp", forState: .Normal)
    }
    
    @IBAction func toggleRsvp(sender: AnyObject){
        self.eventDetailPresenter.toggleRsvp()
//        if event.isRsvped() {
//            event.setRsvpUuidWithNSString(nil)
//        }
//        else {
//            event.setRsvpUuidWithNSString("asdf")
//        }
//        updateUi()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}