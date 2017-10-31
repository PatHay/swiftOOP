import UIKit

class Animal{
    var name: String
    var health: Int = 100
    init(name: String){
        self.name = name
    }
    
    func displayHealth()->Int{
        return self.health
    }
}

class Cat: Animal {
    
    override init(name: String){
        super.init(name: name)
        self.health = 150
    }
    
    func growl(){
        print("Rawr!")
    }
    
    func run(){
        print("Running")
        health -= 10
    }
}

class Lion: Cat{
    
    override init(name: String){
        super.init(name: name)
        self.health = 200
    }
    
    override func growl(){
        print("ROAR!!!! I am the King of the Jungle")
    }
}

class Cheetah: Cat{
    
    override init(name: String){
        super.init(name: name)
        self.health = 200
    }
    
    override func run(){
        if(health < 50){
            print("Cannot Run! Not enough health!")
        } else {
        print("Running Fast")
        health -= 50
        }
    }
}

var cat1 = Cheetah(name: "Dog")
cat1.run()
cat1.run()
cat1.run()
cat1.run()
print(cat1.displayHealth())

var cat2 = Lion(name: "Lion")
cat2.run()
cat2.run()
cat2.run()
cat2.growl()

