let zero = "0".utf8.first!
let one = "1".utf8.first!
let two = "2".utf8.first!
let three = "3".utf8.first!
let four = "4".utf8.first!
let five = "5".utf8.first!
let six = "6".utf8.first!
let seven = "7".utf8.first!
let eight = "8".utf8.first!
let nine = "9".utf8.first!
let plus = "+".utf8.first!
let minus = "-".utf8.first!
let dot = ".".utf8.first!
let e = "e".utf8.first!
let whitespace = " ".utf8.first!

class Solution {
    func isNumber(_ s: String) -> Bool {
        var next: Int? = 0
        for each in s.utf8 {
            next = self[next, each]
        }
        return _accepts(next)
    }

    func _accepts(_ index: Int?) -> Bool {
        switch index {
            case .some(1), .some(4), .some(6), .some(8):
                return true
            default: 
                return false
        }
    }
    
    subscript(index: Int?, character: UInt8) -> Int? {
        switch index {
            case .some(0): return s0(character)
            case .some(1): return s1(character)
            case .some(2): return s2(character)
            case .some(3): return s3(character)
            case .some(4): return s4(character)
            case .some(5): return s5(character)
            case .some(6): return s6(character)
            case .some(8): return s8(character)
            default: return nil
        }
    }

    func s0(_ character: UInt8) -> Int? {
        struct Static {
            static let table = [
                zero: 1,
                one: 1,
                two: 1,
                three: 1,
                four: 1,
                five: 1,
                six: 1,
                seven: 1,
                eight: 1,
                nine: 1,
                plus: 2,
                minus: 2,
                dot: 3,
                whitespace: 0,
            ]
        }
        return Static.table[character]
    }

    func s1(_ character: UInt8) -> Int? {
        struct Static {
            static let table = [
                zero: 1,
                one: 1,
                two: 1,
                three: 1,
                four: 1,
                five: 1,
                six: 1,
                seven: 1,
                eight: 1,
                nine: 1,
                dot: 4,
                e: 5,
                whitespace: 6,
            ]
        }
        return Static.table[character]
    }

    func s2(_ character: UInt8) -> Int? {
        struct Static {
            static let table = [
                zero: 1,
                one: 1,
                two: 1,
                three: 1,
                four: 1,
                five: 1,
                six: 1,
                seven: 1,
                eight: 1,
                nine: 1,
                dot: 3,
            ]
        }
        return Static.table[character]
    }

    func s3(_ character: UInt8) -> Int? {
        struct Static {
            static let table = [
                zero: 4,
                one: 4,
                two: 4,
                three: 4,
                four: 4,
                five: 4,
                six: 4,
                seven: 4,
                eight: 4,
                nine: 4,
            ]
        }
        return Static.table[character]
    }

    func s4(_ character: UInt8) -> Int? {
        struct Static {
            static let table = [
                zero: 4,
                one: 4,
                two: 4,
                three: 4,
                four: 4,
                five: 4,
                six: 4,
                seven: 4,
                eight: 4,
                nine: 4,
                e: 5,
                whitespace: 6,
            ]
        }
        return Static.table[character]
    }

    func s5(_ character: UInt8) -> Int? {
        struct Static {
            static let table = [
                zero: 8,
                one: 8,
                two: 8,
                three: 8,
                four: 8,
                five: 8,
                six: 8,
                seven: 8,
                eight: 8,
                nine: 8,
                plus: 3,
                minus: 3,
            ]
        }
        return Static.table[character]
    }

    func s6(_ character: UInt8) -> Int? {
        struct Static {
            static let table = [
                whitespace: 6,
            ]
        }
        return Static.table[character]
    }

    func s8(_ character: UInt8) -> Int? {
        struct Static {
            static let table = [
                zero: 8,
                one: 8,
                two: 8,
                three: 8,
                four: 8,
                five: 8,
                six: 8,
                seven: 8,
                eight: 8,
                nine: 8,
                whitespace: 6,
            ]
        }
        return Static.table[character]
    }
}
