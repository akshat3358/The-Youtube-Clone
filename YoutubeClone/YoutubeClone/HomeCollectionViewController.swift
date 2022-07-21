//
//  HomeCollectionViewController.swift
//  YoutubeClone
//
//  Created by Akshat Chaturvedi on 20/07/22.
//

import UIKit

let reuseIdentifier = "CellId"

class HomeCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        navigationItem.title = "Home"
        self.collectionView.backgroundColor = UIColor.white
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        cell.backgroundColor = UIColor.purple
        return cell
    }
}
