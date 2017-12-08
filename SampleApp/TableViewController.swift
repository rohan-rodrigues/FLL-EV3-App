//  Copyright © 2017 Schibsted. All rights reserved.

import UIKit
import Layout

private let images = [
    UIImage(named: "color"),
    UIImage(named: "video_icon"),
    UIImage(named: "collect"),
    UIImage(named: "favicon"),
]

private let videoNames = ["Using The Ev3 Color Sensor", "Programming the Ev3 Infrared Sensor", "Lego Nxt 2.0 Crawler/Climber", "Lego Rock Crawler Prototype"]

private let videoLinks = ["https://youtu.be/JYQFMkmL2C8", "https://youtu.be/HfOxI4kfjok", "https://youtu.be/V0xW5C3QYS0", "https://youtu.be/2kIyOIJLVmo"]

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView? {
        didSet {
            tableView?.registerLayout(
                named: "TableCell.xml",
                forCellReuseIdentifier: "standaloneCell"
            )
        }
    }
    

    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        let node = tableView.dequeueReusableHeaderFooterNode(withIdentifier: "templateHeader")
        return node?.view as? UITableViewHeaderFooterView
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = (indexPath.row % 2 == 0) ? "templateCell" : "standaloneCell"
        let node = tableView.dequeueReusableCellNode(withIdentifier: identifier, for: indexPath)
        let image = images[indexPath.row % images.count]!
        let videoName = videoNames[indexPath.row % videoNames.count]
        let videoLink = videoLinks[indexPath.row % videoLinks.count]

        node.setState([
            "row": indexPath.row,
            "image": image,
            "whiteImage": image.withRenderingMode(.alwaysOriginal),
            "link": videoLink,
            "videoName": videoName,
        ])

        return node.view as! UITableViewCell
    }
}

