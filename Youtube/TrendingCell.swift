//
//  TrendingCell.swift
//  Youtube
//
//  Created by 许 宁 on 3/3/17.
//  Copyright © 2017 Abish. All rights reserved.
//

import UIKit

class TrendingCell: FeedCell {

    override func fetchVideos() {
        ApiService.sharedInstance.fetchTrendingFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }

    }

}
