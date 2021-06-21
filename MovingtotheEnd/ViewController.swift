//
//  ViewController.swift
//  MovingtotheEnd
//
//  Created by Daniel Washington Ignacio on 21/06/21.
//

/*
 Write a function that moves all elements of one type to the end of the array.

 Examples

 moveToEnd([1, 3, 2, 4, 4, 1], 1) ➞ [3, 2, 4, 4, 1, 1]
 // Move all the 1s to the end of the array.

 moveToEnd([7, 8, 9, 1, 2, 3, 4], 9) ➞ [7, 8, 1, 2, 3, 4, 9]
 Notes

 Keep the order of the un-moved items the same.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.moveToEnd([1, 3, 2, 4, 4, 1], 1))
        print(self.moveToEnd([7, 8, 9, 1, 2, 3, 4], 9))
    }
    func moveToEnd(_ arr: [Int], _ el: Int) -> [Int] {
        var newArr: [Int] = arr
        var position: Int = 0
        for n in newArr {
            if n == el{
                newArr.remove(at: position)
                newArr.append(el)
            }
            position = position + 1
        }
        
        return newArr
    }


}

