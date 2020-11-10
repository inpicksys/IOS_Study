//
//  Dragon.swift
//  ClassesDemo
//
//  Created by Misha Strutinsky on 11.11.2020.
//

class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String) {
        print("Says \(speech)")
    }
    
    override func move() {
        print("Fly forwards")
    }
    
    override func attack() {
        super.attack()
        print("Spit fire, does 10 make damage")
    }
}
