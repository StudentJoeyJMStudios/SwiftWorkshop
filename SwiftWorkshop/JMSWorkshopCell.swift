//
//  JMSWorkshopCell.swift
//  SwiftWorkshop
//
//  Created by Joseph Richardson on 10/6/14.
//  Copyright (c) 2014 JMStudios. All rights reserved.
//

import UIKit

class JMSWorkshopCell: UITableViewCell
{
    @IBOutlet weak var planetName: UILabel!

    @IBOutlet weak var planetImage: UIImageView!
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
