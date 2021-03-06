import Foundation

class t_set_of_primes{
    var primes: Set<Int>
    
    init(){
        primes = []
    }
    
    init(_ x: Int){
        primes = [x]
    }
    
    init(_ x: Int, _ y: Int){
        primes = []
        for i in stride(from: x, to: y + 1, by: 1){
            if is_prime(i){        
                primes.insert(i)
            }
        }
    }

    deinit{
        primes = []
    }
    
    func is_prime(_ x: Int)->Bool
    {
    /*
        var d = 2
        while d < Int(sqrt(Double(x))){
            if x % d == 0{
                return false
            }
            d = d + 1    
        }
        return true
    */
        for d in stride(from: 2, through: Int(sqrt(Double(x))), by: 1){
            if x % d == 0{
                return false
            }
        }
        return true
    }
    
    func add(_ x: Int){
        if is_prime(x){
            primes.insert(x)
        }
    }
    
    func reuneste(_ a: t_set_of_primes)
    {
        primes = primes.union(a.primes)
    }
    
    func reuneste2(_ a: t_set_of_primes) -> t_set_of_primes
    {
        let tmp = t_set_of_primes() 
        tmp.primes = primes.union(a.primes)
        return tmp
    }

    func intersectie(_ a: t_set_of_primes)
    {
        primes = primes.intersection(a.primes)
    }

    func print_set(){
        var s = "The set is = {"
        for x in primes.sorted(){
            s = s + String(x) + " "
        }
        s = s + "}"
        print(s)
    }
}

let s_opt = readLine()
if let s = s_opt{

    switch s{
        case "1": // testam adaugare
            let m = t_set_of_primes()
            m.add(2)
            m.add(3)
            m.add(4)
            m.print_set()
            //fallthrough
        case "2": // testam constructor cu 1 element
            let m = t_set_of_primes(7)
            m.add(2)
            m.add(3)
            m.add(4)
            m.print_set()
        case "3": // testam constructor cu 2 element2
            let m = t_set_of_primes(7, 41)
            m.print_set()
        case "4": // testam reuniune
            let m = t_set_of_primes(7, 41)
            let x = t_set_of_primes(90, 100)
            m.reuneste(x)
            m.print_set()
        case "5": // testam reuniune 2
            let m = t_set_of_primes(7, 41)
            let x = t_set_of_primes(90, 100)
            var y = t_set_of_primes(100, 200)
            y = m.reuneste2(x)
            y.print_set()
        case "6": // testam intersectie
            let m = t_set_of_primes(7, 41)
            let x = t_set_of_primes(30, 100)
            m.intersectie(x)
            m.print_set()
        default:
            print("Invalid input")
    }
}
else{
    print("no input")
}