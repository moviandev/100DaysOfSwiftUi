import Cocoa

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
    func speak() {
        print("Not defined yet!")
    }
}

class Dog: Animal {
}

class Cat: Animal {
    var isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
}

final class Corgi: Dog {
    override func speak() {
        print("Wof... Wo..f...")
    }
}

final class Poodle: Dog {
    override func speak() {
        print("Woof... Wooof... Wof...")
    }
}

final class Persian: Cat {
    override func speak() {
        print("Meaw... Meaw...")
    }
}

final class Lion: Cat {
    override func speak() {
        print("Roar... Roar...")
    }
}

var snowball = Persian(legs: 4, isTame: true)
var kitty = Lion(legs: 4, isTame: false)
var wolf = Poodle(legs: 3)
var fluffy = Corgi(legs: 4)

snowball.speak()
kitty.speak()
wolf.speak()
fluffy.speak()



