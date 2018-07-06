//
//  ViewController.swift
//  CalendarFrontEnd
//
//  Created by alvin wen on 7/5/18.
//  Copyright © 2018 alvin wen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var array:[String] = []
    let reuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for num in 1...31 {
            self.array.append(String(num))
        }
    }
    
    //creates number of days for the month
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.array.count
    }
    
    //populates the cells
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CustomCell
        cell.myLabel.text = self.array[indexPath.item]
        if(indexPath.item % 2 == 0){
            cell.backgroundColor = UIColor.cyan.withAlphaComponent(0.2)
        }else{
            cell.backgroundColor = UIColor.blue.withAlphaComponent(0.2)
        }
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

