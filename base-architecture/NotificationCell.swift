//
//  NotificationCell.swift
//  base-architecture
//
//  Created by Kazuma Inazaki on 2022/02/24.
//

import UIKit

class NotificationCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet private weak var headerImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var descLabel: UILabel!

    func setup(headerName: String, title: String, desc: String) {
        headerImageView.image = UIImage(named: headerName)
        titleLabel.text = title
        descLabel.text = desc
    }

}
