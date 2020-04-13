//
//  ViewController.swift
//  bloowery-2
//
//  Created by Полина Тизик on 12.04.2020.
//  Copyright © 2020 Полина Тизик. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    

    @IBOutlet weak var cvWatering: UICollectionView!
    
    @IBOutlet weak var cvFertilizer: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == cvFertilizer) {
            return 3
        }
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cvWatering.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellW
        cell.backgroundColor = UIColor(red:0.96, green:0.97, blue:1.00, alpha:1.00)
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true
        
        if (collectionView == cvFertilizer) {
            let cell2 = cvFertilizer.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCellF
            cell2.backgroundColor = UIColor(red:0.96, green:0.97, blue:1.00, alpha:1.00)
            cell2.layer.cornerRadius = 15
            cell2.layer.masksToBounds = true
            
            return cell2
        }
        
        return cell
    }
    

    @IBOutlet weak var todayTasks: UILabel!
    
    @IBOutlet weak var wateringTasks: UILabel!
    
    @IBOutlet weak var fertilizerTasks: UILabel!
    
    @IBAction func unwrapTasks(_ sender: UIButton) {
    }

    @IBAction func allDone(_ sender: UIButton) {
    }
    
    @IBAction func unwrapTasks2(_ sender: UIButton) {
    }
    
    @IBAction func allDone2(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

}

// import UIKit

//class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 10
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
//        return cell
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//
//}

