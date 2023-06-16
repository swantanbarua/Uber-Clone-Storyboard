//
//  DestinationSuggestionsTableViewCell.swift
//  Uber-Clone-Storyboard
//
//  Created by Swantan Barua on 16/06/23.
//

import UIKit

class DestinationSuggestionsTableViewCell: UITableViewCell {

    @IBOutlet weak var destinationHeader: UILabel!
    @IBOutlet weak var destinationAddress: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
