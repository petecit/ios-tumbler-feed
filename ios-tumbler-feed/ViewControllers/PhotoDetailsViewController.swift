//
//  PhotoDetailsViewController.swift
//  ios-tumbler-feed
//
//  Created by peter on 11/16/18.
//  Copyright © 2018 petecit. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    var post: [String: Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let photos = post["photos"] as? [[String: Any]] {
            let photo = photos[0]
            let originalSize = photo["original_size"] as! [String: Any]
            let urlString = originalSize["url"] as! String
            let url = URL(string: urlString)
            photoImageView.af_setImage(withURL: url!)
        }
    }
}
