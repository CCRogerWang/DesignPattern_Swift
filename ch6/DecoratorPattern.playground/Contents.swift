//: Playground - noun: a place where people can play

import UIKit
import Foundation

//Can't modify
class Hero {
    var hp: Int = 10
    
    func showHP() {
        print(hp)
    }
    
}

class StrongHero: Hero {
    override func showHP() {
        print(hp + 10)
    }
}

class LittleHero: Hero {
    override func showHP() {
        print(hp - 5)
    }
}

// ...ect

//Method 2: extension & protocal
protocol JobHero {
    var hp: Int { get }
    var jobName: String { get }
    func showJobNameAndHP()
}

class BaseHero: JobHero {
    var hp: Int {
        get {
            return 10
        }
    }
    var jobName: String {
        get {
            return "BaseHero"
        }
    }
    
    func showJobNameAndHP() {
        print("\(jobName) : \(hp)")
    }
}

class HeroDecorator: JobHero {
    var hp: Int {
        get {
            return heroInstance.hp
        }
    }
    
    var jobName: String {
        get {
            return heroInstance.jobName
        }
    }
    
    let heroInstance: JobHero
    
    required init(jobHero: JobHero) {
        self.heroInstance = jobHero
    }
    
    func showJobNameAndHP() {
        print("\(jobName) : \(hp)")
    }
}
