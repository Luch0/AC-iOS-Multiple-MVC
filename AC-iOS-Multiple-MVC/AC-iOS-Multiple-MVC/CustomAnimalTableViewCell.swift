//
//  CustomAnimalTableViewCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Luis Calle on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class CustomAnimalTableViewCell: UITableViewCell {

    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var classificationAndOrigin: UILabel!
    @IBOutlet weak var animalImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
