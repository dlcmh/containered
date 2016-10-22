//
//  MyCollectionViewController.swift
//  Containered
//
//  Created by David Chin on 22/10/2016.
//  Copyright © 2016 Dakerr Consulting. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MyCollectionViewController: UICollectionViewController {
    
    // MARK: Properties
    var characters: [String] = {
        return "ABCDEFGHIJKLMNOPQRSTUVWXYZ".characters.map { String($0) }
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return characters.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MyCollectionViewCell
    
        cell.characterLabel.text = characters[indexPath.item]
    
        return cell
    }

}
