//
//  CustomTableViewCell.swift
//  TableView
//
//  Created by Soeng Saravit on 11/20/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(title:String, descripiton:String) {
        self.titleLabel.text = title
        self.descriptionLabel.text = descripiton
    }
    
}
