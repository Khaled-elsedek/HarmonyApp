//
//  dicoveryTableViewCell.swift
//  HarmonyApp
//
//  Created by khaled elsedek on 8/26/19.
//  Copyright © 2019 Khaled. All rights reserved.
//

import UIKit
import Cosmos

class dicoveryTableViewCell: UITableViewCell {

    @IBOutlet weak var imageForCell: UIImageView!
    @IBOutlet weak var CellName: UILabel!
    @IBOutlet weak var ratingForCell: UILabel!
    @IBOutlet weak var distanceForCell: UILabel!
    @IBOutlet weak var ratingCosmos: CosmosView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
