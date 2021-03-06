//
//  ArrayExtension.swift
//  SelectionSort
//
//  Created by Artem Kislitsyn on 25.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array  where Element: Comparable{
	public mutating func selectionSort()  {
		for i in 0...self.count-1{
			var min = i;
			var j = i+1
			while (j < self.count)
			{
				if self[j]  < self[min]
				{
					min = j
				}
				j+=1
				
			}
			let a = self[i]
			self[i] = self[min]
			self[min] = a
			
		}
		
	}
}


