//
//  SubscriptionCell.swift
//  Youtube
//
//  Created by 许 宁 on 3/3/17.
//  Copyright © 2017 Abish. All rights reserved.
//

import UIKit

class SubscriptionCell: FeedCell {

    override func fetchVideos() {
        ApiService.sharedInstance.fetchSubscriptionFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }

}
