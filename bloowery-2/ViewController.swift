//
//  ViewController.swift
//  bloowery-2
//
//  Created by Полина Тизик on 12.04.2020.
//  Copyright © 2020 Полина Тизик. All rights reserved.
//

import UIKit

struct Task {
    var imageName: String
    var taskName: String
    var taskInfo: String
}

struct Duty {
    var imageName: String
    var taskName: String
    var taskInfo: String
}

class ViewController: UIViewController {

    @IBOutlet weak var cvWatering: UICollectionView!
    
    @IBOutlet weak var cvFertilizer: UICollectionView!
    
    var tasks: [Task] = [Task(imageName: "Ficus", taskName: "Полить Степушу", taskInfo: "140 мл"), Task(imageName: "Succulent", taskName: "Полить Хаврошу", taskInfo: "200 мл"), Task(imageName: "Maranta", taskName: "Полить Мару", taskInfo: "100 мл")]
    
    var duties: [Duty] = [Duty(imageName: "Ficus", taskName: "Удобрить Степушу", taskInfo: "Внекорневое"), Duty(imageName: "Succulent", taskName: "Удобрить Хаврошу", taskInfo: "Внекорневое"), Duty(imageName: "Maranta", taskName: "Удобрить Мару", taskInfo: "Корневое")]
    
    var collectionViewFlowLayout1: UICollectionViewFlowLayout!
    
    var collectionViewFlowLayout2: UICollectionViewFlowLayout!
    
    let cellIdentifier1 = "TaskCollectionViewCell"
    
    let cellIdentifier2 = "TaskCollectionViewCell2"
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        if (collectionView == cvFertilizer) {
//            return 3
//        }
//        return 3
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = cvWatering.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellW
//        cell.backgroundColor = UIColor(red:0.96, green:0.97, blue:1.00, alpha:1.00)
//        cell.layer.cornerRadius = 15
//        cell.layer.masksToBounds = true
//
//        if (collectionView == cvFertilizer) {
//            let cell2 = cvFertilizer.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCellF
//            cell2.backgroundColor = UIColor(red:0.96, green:0.97, blue:1.00, alpha:1.00)
//            cell2.layer.cornerRadius = 15
//            cell2.layer.masksToBounds = true
//
//            return cell2
//        }
//
//        return cell
//    }
    

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
        setupCollectionView()
        setupCollectionView2()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupCollectionViewItemSize()
        setupCollectionViewItemSize2()
    }
    
    private func setupCollectionView() {
        cvWatering.delegate = self
        cvWatering.dataSource = self
        
        let nib = UINib(nibName: "TaskCollectionViewCell", bundle: nil)
        cvWatering.register(nib, forCellWithReuseIdentifier: cellIdentifier1)
    }
    
    private func setupCollectionView2() {
        cvFertilizer.delegate = self
        cvFertilizer.dataSource = self
        
        let nib = UINib(nibName: "TaskCollectionViewCell2", bundle: nil)
        cvFertilizer.register(nib, forCellWithReuseIdentifier: cellIdentifier2)
    }
    
    private func setupCollectionViewItemSize() {
        if collectionViewFlowLayout1 == nil {
            let numberOfItemForRow: CGFloat  = 1
            let lineSpacing: CGFloat = 10
            let interItemSpacing: CGFloat  = 15
            
            let width = (cvWatering.frame.width - (numberOfItemForRow-1) * interItemSpacing) / numberOfItemForRow
            let height = width / 5.5
            
            collectionViewFlowLayout1 = UICollectionViewFlowLayout()
            
            collectionViewFlowLayout1.itemSize = CGSize(width: width, height: height)
            collectionViewFlowLayout1.sectionInset = UIEdgeInsets.zero
            collectionViewFlowLayout1.scrollDirection = .vertical
            collectionViewFlowLayout1.minimumInteritemSpacing = lineSpacing
            collectionViewFlowLayout1.minimumInteritemSpacing = interItemSpacing
            cvWatering.setCollectionViewLayout(collectionViewFlowLayout1, animated: true)
        }
    }
    
    private func setupCollectionViewItemSize2() {
        if collectionViewFlowLayout2 == nil {
            let numberOfItemForRow: CGFloat  = 1
            let lineSpacing: CGFloat = 10
            let interItemSpacing: CGFloat  = 15
            
            let width = (cvFertilizer.frame.width - (numberOfItemForRow-1) * interItemSpacing) / numberOfItemForRow
            let height = width / 5.5
            
            collectionViewFlowLayout2 = UICollectionViewFlowLayout()
            
            collectionViewFlowLayout2.itemSize = CGSize(width: width, height: height)
            collectionViewFlowLayout2.sectionInset = UIEdgeInsets.zero
            collectionViewFlowLayout2.scrollDirection = .vertical
            collectionViewFlowLayout2.minimumInteritemSpacing = lineSpacing
            collectionViewFlowLayout2.minimumInteritemSpacing = interItemSpacing
            cvFertilizer.setCollectionViewLayout(collectionViewFlowLayout2, animated: true)
        }
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cvWatering {
            return tasks.count
        }
        return duties.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cvWatering {
            let card = cvWatering.dequeueReusableCell(withReuseIdentifier: cellIdentifier1, for: indexPath) as! TaskCollectionViewCell
            
            card.plantImage.image = UIImage(named: tasks[indexPath.item].imageName)
            card.taskName.text = String("\(tasks[indexPath.item].taskName)")
            card.taskInfo.text = String("\(tasks[indexPath.item].taskInfo)")
            
            card.layer.cornerRadius = 10
            card.layer.masksToBounds = true
            
            
            return card
        } else {
            let cell = cvFertilizer.dequeueReusableCell(withReuseIdentifier: cellIdentifier2, for: indexPath) as! TaskCollectionViewCell2
            
            cell.plantImage2.image = UIImage(named: duties[indexPath.item].imageName)
            cell.taskName2.text = String("\(duties[indexPath.item].taskName)")
            cell.taskInfo2.text = String("\(duties[indexPath.item].taskInfo)")
            
            cell.layer.cornerRadius = 10
            cell.layer.masksToBounds = true
            
            
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("didSelectItemAt: \(indexPath)")
    }
    
    
    
}


