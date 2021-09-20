//
//  SecondTask.swift
//  classTask
//
//  Created by galiev nail on 20.09.2021.
//

import Foundation

class SecondTaskClass {
	func method1() {}
	func method2() {}
}

class ChildClass: SecondTaskClass {
	override func method2() {}
	func method3() {}
}

protocol SecondProtocol {
	func someFunc()
}

struct Foo: SecondProtocol {
	func someFunc() {
		print("fsd")
	}
}

class SomeThirdClass {
	
	func someMethod() {
		print("text")
	}
}

func result() {
	let foo: SomeProtocol = Foo() as! SomeProtocol
	foo.someFunc() //witness table
	
	let instance = SomeThirdClass()
	instance.someMethod() // virtual
	
	let child = ChildClass()
	child.method2() // virtual
}


