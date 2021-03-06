//
//  VampireNumber.swift
//  VampireNumber
//
//  Created by Artem Kislitsyn on 12.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

func vampire<T>(n: T) -> [(T, T)] where T: BinaryInteger, T.Stride: SignedInteger {
	let strN = String(n).sorted()
	let fangLength = strN.count / 2
	let start = T(pow(10, Double(fangLength - 1)))
	let end = T(Double(n).squareRoot())
	
	var fangs = [(T, T)]()
	
	for i in start...end where n % i == 0 {
		let quot = n / i
		
		guard i % 10 != 0 || quot % 10 != 0 else {
			continue
		}
		
		if "\(i)\(quot)".sorted() == strN {
			fangs.append((i, quot))
		}
	}
	
	return fangs
}
