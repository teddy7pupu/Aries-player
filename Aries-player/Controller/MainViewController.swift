//
//  MainViewController.swift
//  Aries-player
//
//  Created by RD-Ops02 on 2018/2/27.
//  Copyright © 2018年 RD-Ops02. All rights reserved.
//

import UIKit

class MainViewController: UIViewController
, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var popularCollection: UICollectionView!
    @IBOutlet weak var LatestCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: CollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == popularCollection {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularCell",for: indexPath) as! PopularCell
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LatestCell",for: indexPath) as! LatestCell
        return cell
    }
    
    //MARK: TableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RankCell",for: indexPath) as! RankCell
        return cell
    }
}
