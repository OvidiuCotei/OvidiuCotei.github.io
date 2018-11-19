import Foundation

class t_set_of_primes {

    var primes: Set<Int>
    
    // Constructor
    init()
    {
        primes = []
    }
    
    // Constructor
    init(_ x: Int)
    {
        primes = [x]
    }
    
    // Constructor
    init(_ x: Int, _ y: Int)
    {
        primes = []
        
        for i in stride(from: x, to: y + 1, by: 1)
        {
            if is_prime(i)
            {
                primes.insert(i)
            }
        }
    }
    
    // Destructor
    deinit
    {
        primes = [] // Vector vid
    }
    
    func is_prime(_ x: Int)->Bool
    {
        /*
        var i = 2
        while i < Int(sqrt(Double(x))){
            if x % i == 0{
                return false
            }
            i = i + 1
        }
        return true
        */
        for i in stride(from: 2, to: Int(sqrt(Double(x))) + 1, by: 1)
        {
            if x % i == 0
            {
                return false
            }
        }
        return true
    }
    
    func add(_ x: Int)
    {
        if is_prime(x)
        {
            primes.insert(x)
        }
    }
    
    func print_set()
    {
        var s = "The set is = { "
        
        for i in primes.sorted()
        {
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
        case "4": // Testam contructorul cu 2 parametri
            let a = t_set_of_primes(2, 41)
            a.print_set()
        default:
            print("Invalid option")
    }
}
else{
    print("No input")
}


