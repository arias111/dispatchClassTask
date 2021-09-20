//
//  ThirdTask.swift
//  classTask
//
//  Created by galiev nail on 20.09.2021.
//

import Foundation

class ThirdClass: NSObject {
	
	@objc func someFunc() {}
	
	@objc dynamic func someMethod() {}

}

extension ThirdClass {
	 func someStaticMethod() { }
}

protocol ThirdProtocol {
	func someFunc()
}

class ThirdClassExample: ThirdProtocol {
	func someFunc() { }
}

func resultTask() {
	let first = ThirdClass()
	first.someFunc() // virtual
	
	first.someStaticMethod() // static
	
	first.someMethod()
	first.perform(#selector(ThirdClass.someMethod)) // message
	
	let second: ThirdProtocol = ThirdClassExample()
	second.someFunc() // witness
}
