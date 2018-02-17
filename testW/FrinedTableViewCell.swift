//
//  FrinedTableViewCell.swift
//  testW
//
//  Created by Abdulrahman Alzeer on 17/02/2018.
//  Copyright © 2018 Abdulrahman Alzeer. All rights reserved.
//

import UIKit

class FrinedTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var cellPic: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
