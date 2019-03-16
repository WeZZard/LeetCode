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
        switch character {
            case "0".utf8.first!, 
                "1".utf8.first!,
                "2".utf8.first!,
                "3".utf8.first!,
                "4".utf8.first!,
                "5".utf8.first!,
                "6".utf8.first!,
                "7".utf8.first!,
                "8".utf8.first!,
                "9".utf8.first!:
                return 1
            case "+".utf8.first!:   return 2
            case "-".utf8.first!:   return 2
            case ".".utf8.first!:   return 3
            case "e".utf8.first!:   return nil
            case " ".utf8.first!:   return 0
            default:    return nil
        }
    }

    func s1(_ character: UInt8) -> Int? {
        switch character {
            case "0".utf8.first!, 
                "1".utf8.first!,
                "2".utf8.first!,
                "3".utf8.first!,
                "4".utf8.first!,
                "5".utf8.first!,
                "6".utf8.first!,
                "7".utf8.first!,
                "8".utf8.first!,
                "9".utf8.first!:
                return 1
            case "+".utf8.first!:   return nil
            case "-".utf8.first!:   return nil
            case ".".utf8.first!:   return 4
            case "e".utf8.first!:   return 5
            case " ".utf8.first!:   return 6
            default:    return nil
        }
    }

    func s2(_ character: UInt8) -> Int? {
        switch character {
            case "0".utf8.first!, 
                "1".utf8.first!,
                "2".utf8.first!,
                "3".utf8.first!,
                "4".utf8.first!,
                "5".utf8.first!,
                "6".utf8.first!,
                "7".utf8.first!,
                "8".utf8.first!,
                "9".utf8.first!:
                return 1
            case "+".utf8.first!:   return nil
            case "-".utf8.first!:   return nil
            case ".".utf8.first!:   return 3
            case "e".utf8.first!:   return nil
            case " ".utf8.first!:   return nil
            default:    return nil
        }
    }

    func s3(_ character: UInt8) -> Int? {
        switch character {
            case "0".utf8.first!, 
                "1".utf8.first!,
                "2".utf8.first!,
                "3".utf8.first!,
                "4".utf8.first!,
                "5".utf8.first!,
                "6".utf8.first!,
                "7".utf8.first!,
                "8".utf8.first!,
                "9".utf8.first!:
                return 4
            case "+".utf8.first!:   return nil
            case "-".utf8.first!:   return nil
            case ".".utf8.first!:   return nil
            case "e".utf8.first!:   return nil
            case " ".utf8.first!:   return nil
            default:    return nil
        }
    }

    func s4(_ character: UInt8) -> Int? {
        switch character {
            case "0".utf8.first!, 
                "1".utf8.first!,
                "2".utf8.first!,
                "3".utf8.first!,
                "4".utf8.first!,
                "5".utf8.first!,
                "6".utf8.first!,
                "7".utf8.first!,
                "8".utf8.first!,
                "9".utf8.first!:
                return 4
            case "+".utf8.first!:   return nil
            case "-".utf8.first!:   return nil
            case ".".utf8.first!:   return nil
            case "e".utf8.first!:   return 5
            case " ".utf8.first!:   return 6
            default:    return nil
        }
    }

    func s5(_ character: UInt8) -> Int? {
        switch character {
            case "0".utf8.first!, 
                "1".utf8.first!,
                "2".utf8.first!,
                "3".utf8.first!,
                "4".utf8.first!,
                "5".utf8.first!,
                "6".utf8.first!,
                "7".utf8.first!,
                "8".utf8.first!,
                "9".utf8.first!:
                return 8
            case "+".utf8.first!:   return 3
            case "-".utf8.first!:   return 3
            case ".".utf8.first!:   return nil
            case "e".utf8.first!:   return nil
            case " ".utf8.first!:   return nil
            default:    return nil
        }
    }

    func s6(_ character: UInt8) -> Int? {
        switch character {
            case "0".utf8.first!, 
                "1".utf8.first!,
                "2".utf8.first!,
                "3".utf8.first!,
                "4".utf8.first!,
                "5".utf8.first!,
                "6".utf8.first!,
                "7".utf8.first!,
                "8".utf8.first!,
                "9".utf8.first!:
                return nil
            case "+".utf8.first!:   return nil
            case "-".utf8.first!:   return nil
            case ".".utf8.first!:   return nil
            case "e".utf8.first!:   return nil
            case " ".utf8.first!:   return 6
            default:    return nil
        }
    }

    func s8(_ character: UInt8) -> Int? {
        switch character {
            case "0".utf8.first!, 
                "1".utf8.first!,
                "2".utf8.first!,
                "3".utf8.first!,
                "4".utf8.first!,
                "5".utf8.first!,
                "6".utf8.first!,
                "7".utf8.first!,
                "8".utf8.first!,
                "9".utf8.first!:
                return 8
            case "+".utf8.first!:   return nil
            case "-".utf8.first!:   return nil
            case ".".utf8.first!:   return nil
            case "e".utf8.first!:   return nil
            case " ".utf8.first!:   return 6
            default:    return nil
        }
    }
}
