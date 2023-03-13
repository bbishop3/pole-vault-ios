//
//  MainViewController.swift
//  PoleVaultJournal
//
//  Created by Brittany Bishop on 3/8/23.
//

import UIKit

class MainViewController: UIViewController {

    
    
    
    @IBOutlet weak var journalsCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        journalsCollection.dataSource = self
        journalsCollection.delegate = self
    }
}

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "journalCollectionViewCell", for: indexPath)
        return cell
    }
}
