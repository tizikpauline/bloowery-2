////
////  TasksWViewController.swift
////  bloowery-2
////
////  Created by Полина Тизик on 13.04.2020.
////  Copyright © 2020 Полина Тизик. All rights reserved.
////
//
//import UIKit
//
////struct Item {
////    var imageName: String
////    var plantName: String
////    var plantInfo: String
////}
//
//class TasksWViewController: UIViewController {
//    
//    
//    
//    var items: [Item] = [Item(imageName: "Ficus", plantName: "Степуша", plantInfo: "150 мл"), Item(imageName: "Succulent", plantName: "Хавроша", plantInfo: "250 мл"), Item(imageName: "Maranta", plantName: "Мара", plantInfo: "100 мл")]
//       
//       var collectionViewFlowLayout: UICollectionViewFlowLayout!
//       
//       let cellIdentifier = "PlantCollectionViewCell"
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupCollectionView()
//    }
//    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        setupCollectionViewItemSize()
//    }
//
//    private func setupCollectionView() {
//        myPlantsCV.delegate = self
//        myPlantsCV.dataSource = self
//        let nib = UINib(nibName: "PlantCollectionViewCell", bundle: nil)
//        myPlantsCV.register(nib, forCellWithReuseIdentifier: cellIdentifier)
//    }
//    
//    private func setupCollectionViewItemSize() {
//        if collectionViewFlowLayout == nil {
//            let numberOfItemForRow: CGFloat  = 1
//            let lineSpacing: CGFloat = 10
//            let interItemSpacing: CGFloat  = 15
//            
//            let width = (myPlantsCV.frame.width - (numberOfItemForRow-1) * interItemSpacing) / numberOfItemForRow
//            let height = width
//            
//            collectionViewFlowLayout = UICollectionViewFlowLayout()
//            
//            collectionViewFlowLayout.itemSize = CGSize(width: width, height: height)
//            collectionViewFlowLayout.sectionInset = UIEdgeInsets.zero
//            collectionViewFlowLayout.scrollDirection = .vertical
//            collectionViewFlowLayout.minimumInteritemSpacing = lineSpacing
//            collectionViewFlowLayout.minimumInteritemSpacing = interItemSpacing
//            
//            myPlantsCV.setCollectionViewLayout(collectionViewFlowLayout, animated: true)
//        }
//    }
//}
//
//extension MyPlantsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return items.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let card = myPlantsCV.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! PlantCollectionViewCell
//        
//        card.plantImage.image = UIImage(named: items[indexPath.item].imageName)
//        card.plantName.text = String("\(items[indexPath.item].plantName)")
//        
//        card.layer.cornerRadius = 5
//        card.layer.masksToBounds = true
//        
//        
//        return card
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print("didSelectItemAt: \(indexPath)")
//    }
//    
//}
