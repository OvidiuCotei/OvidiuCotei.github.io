import Foundation

print("a= ")
let s_opt = readLine()

if let s = s_opt
{
    let a_opt = Float(s)
    
    if let a = a_opt
    {
        // il am pe a
        print("b= ")
        let s_opt = readLine()
        
        if let s = s_opt
        {
            let a_opt = Float(s)
            
            if let b = a_opt
            {
                // il am pe b
                print("c= ")
                let s_opt = readLine()
                
                if let s = s_opt
                {
                    let a_opt = Float(s)
                    
                    if let c = a_opt
                    {
                        // il am pe c
                        print("a= \(a), b = \(b), c = \(c)")
                        
                        let delta = b * b - 4 * a * c
                        let x1_re, x1_im, x2_re, x2_im: Float
                        
                        if delta >= 0
                        {
                            x1_re = (-b - sqrt(delta)) / (2 * a)
                            x2_re = (-b + sqrt(delta)) / (2 * a)
                            x1_im = 0
                            x2_im = 0
                        }
                        else
                        {
                            x1_re = (-b) / (2 * a)
                            x1_im = (-sqrt(delta)) / (2 * a)
                            x2_re = (-b) / (2 * a)
                            x2_im = (sqrt(delta)) / (2 * a)
                        }
                        print("x1 = \(x1_re) + \(x1_im)")
                        print("x2 = \(x2_re) + \(x2_im)")
                        
                    }
                    else
                    {
                        print("Invalid cast")
                    }
                }
                else
                {
                    print("Empty input")
                }
                
            }
            else
            {
                print("Invalid cast")
            }
        }
        else
        {
            print("Empty input")
        }
    }
    else
    {
        print("Invalid cast")
    }
}
else
{
    print("Empty input")
}
