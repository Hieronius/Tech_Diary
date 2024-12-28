//
//  Circular Array.swift
//  Tech Diary
//
//  Created by Арсентий Халимовский on 18.11.2024.
//

import Foundation

/*
 MARK: Each NEXT element can be reached by:

 // let array = [1, 2, 3, 4, 5]

 let nextIndex = (currentIndex + 1) % array.count
 array[4] // nextIndex == (4 + 1) % 5 == 0 == 1

 MARK: Each PREVIOUS element can be reached by:

 let previousIndex = (currentIndex - 1 + array.count) % array.count
 array[0] // previousIndex = 0 - 1 + 5 % 5 == 4 == 5
 */
