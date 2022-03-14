//
//  NotificationDetailViewController.swift
//  base-architecture
//
//  Created by Kazuma Inazaki on 2022/02/28.
//

import UIKit

class NotificationDetailViewController: UIViewController {
    
    var notification: Notification!

    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTitleView: UILabel!
    @IBOutlet weak var detailDescriptionView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailImageView.image = UIImage(named: notification.headerName)
        detailTitleView.text = notification.title
        detailDescriptionView.text = notification.desc
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
