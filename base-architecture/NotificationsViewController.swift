//
//  ViewController.swift
//  base-architecture
//
//  Created by Kazuma Inazaki on 2022/02/17.
//

import UIKit

class NotificationsViewController: UIViewController {
    @IBOutlet private weak var notificationTableView: UITableView!

    var notifications: [Notification] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        notificationTableView.dataSource = self
        
        loadData()
    }

    func loadData() {
        notifications.append(Notification(headerName: "programming_man", title: "お知らせ①", desc: "テスト配信です。"))
        notifications.append(Notification(headerName: "biscuit", title: "お知らせ②", desc: "テスト配信です。"))
        notifications.append(Notification(headerName: "programming_man", title: "お知らせ③", desc: "テスト配信です。"))
        notifications.append(Notification(headerName: "biscuit", title: "お知らせ④", desc: "テスト配信です。"))
        notifications.append(Notification(headerName: "programming_man", title: "お知らせ⑤", desc: "テスト配信です。"))
    }
}

extension NotificationsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationCell", for: indexPath) as! NotificationCell

        let notification = notifications[indexPath.row]
        cell.setup(headerName: notification.headerName, title: notification.title, desc: notification.desc)

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSegue" {
            if let indexPath = notificationTableView.indexPathForSelectedRow {
                guard let destination = segue.destination as? NotificationDetailViewController else {
                    fatalError("Failed to prepare NotificationDetailViewController.")
                }
                
                destination.notification = notifications[indexPath.row]
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let indexPath = notificationTableView.indexPathForSelectedRow {
            notificationTableView.deselectRow(at: indexPath, animated: true)
        }
    }
}
