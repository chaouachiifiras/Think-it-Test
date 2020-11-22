//
//  RoomCellTableViewCell.swift
//  Think-it-testApp
//
//  Created by Firas CHOUACHI on 11/19/20.
//  Copyright © 2020 Firas CHOUACHI. All rights reserved.
//

import UIKit

class RoomCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var roomImageView: UIImageView!
    @IBOutlet weak var roomNameLabel: UILabel!
    @IBOutlet weak var deviceNumberLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        roomImageView.layer.cornerRadius = 10
        roomImageView.layer.shadowRadius = 10
        roomImageView.layer.shadowOffset = CGSize(width: 0, height: 10)
        roomImageView.layer.shadowOpacity = 0.5
        roomImageView.layer.shadowColor = UIColor.gray.cgColor
        roomImageView.layer.shadowPath = UIBezierPath(rect: roomImageView.bounds).cgPath
        roomImageView.layer.masksToBounds = false
        roomNameLabel.textColor = UIColor.white
        deviceNumberLabel.textColor = UIColor.white
        
        
    }

    func updateCell (room: Room) {
        
        roomImageView.image = UIImage(named: room.roomImageName)
        roomNameLabel.text = room.roomName
        deviceNumberLabel.text = room.deviceNumber
        
    }

}
