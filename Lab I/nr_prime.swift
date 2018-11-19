import Foundation

class t_set_of_primes{

    var primes: Set<Int>
    
    // Constructor
    init(){
        primes = []
    }
    
    // Constructor
    init(_ x: Int){
        primes = [x]
    }
    
    // Destructor
    deinit{
        primes = [] // Vector vid
    }
    
    func is_prime(_ x: Int)->Bool{
        var i = 2
        while i < Int(sqrt(Double(x))){
            if x % i == 0{
                return false
            }
            i = i + 1
        }
        return true
    }
    
    func add(_ x: Int){
        if is_prime(x){
            primes.insert(x)
        }
    }
    
    func print_set(){
        var s = "The set is = { "
        
        for i in primes{
            s = s + String(i) + " "
        }
        s = s + "}"
        print(s)
    }
}

let s_opt = readLine()
if let s = s_opt{
    switch s{
        case "1": // Testam constructorul implicit
            let a = t_set_of_primes()
            a.print_set()
        case "2": // Testam constructor cu un parametru
            let a = t_set_of_primes(2)
            a.print_set()
        case "3": // Testam add
            let a = t_set_of_primes()
            a.add(2)
            a.add(7)
            a.add(4)
            a.print_set()
        default:
            print("Invalid option")
    }
}
else{
    print("No input")
}


