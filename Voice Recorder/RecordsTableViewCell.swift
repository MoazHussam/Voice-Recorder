//
//  RecordsTableViewCell.swift
//  Voice Recorder
//
//  Created by Moaz Ahmed on 5/12/16.
//  Copyright © 2016 Moaz Ahmed. All rights reserved.
//

import UIKit

class RecordsTableViewCell: UITableViewCell {

    @IBOutlet weak var recordName: UILabel! { didSet { updateCell() } }
    @IBOutlet weak var recordIcon: UIImageView! { didSet { updateCell() } }
    
    var record: Records? { didSet { updateCell() } }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateCell() {
        if let recordToSet = record {
            recordName.text = recordToSet.recordName
            //recordIcon.image = recordToSet.recordIcon
        }
    }

}
