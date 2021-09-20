//
//  ClassTask.swift
//  classTask
//
//  Created by galiev nail on 20.09.2021.
//

import Foundation

final class SomeClass {
	func someFunc() {
		print("text")
	}
}

protocol SomeProtocol {
	
}

extension SomeProtocol {
	func someFunc() {
		print("dsfds")
	}
}

class SecondClass: SomeProtocol {
	
	final func someFunc() {
		print("dffsdf")
	}
}

func print() {
	let some = SecondClass()
	some.someFunc() // static
}
