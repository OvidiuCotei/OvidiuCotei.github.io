import Foundation

struct t_coef{
    var a:Float
    var b:Float
    var c:Float
}
struct t_solutie{
    var re:Float
    var im:Float
}
struct t_solutii{
    var x1:t_solutie
    var x2:t_solutie
}
func citire()->t_coef
{
    var coef=t_coef(a: 1,b: 2,c: 1) //am initializat membrii
    print("a=")
    let s = readLine()
    if let sa = s{
        let x = Float(sa)
        if let _a = x{
            print("b=")
            let s = readLine()
            if let sa = s{
                let x = Float(sa)
                if let _b = x{
                    print("c=")
                    let s = readLine()
                    if let sa = s{
                        let x = Float(sa)
                        if let _c = x{
                            coef.a=_a
                            coef.b=_b
                            coef.c=_c
                            return coef
                        }
                        else{
                            return coef
                        }
                    }
                    else{
                        return coef
                    }        
                    
                }
                else{
                    return coef
                }
            }
            else{
                return coef
            }        
        }
        else{
            return coef
        }
    }
    else{
        return coef
    }
}
//---------------------------------------------------------
func rezolva(_ coef: t_coef)-> t_solutii
{
    let delta = coef.b * coef.b - 4 * coef.a * coef.c
    
    if delta >= 0{
        let x1=t_solutie(re: (-coef.b - sqrt(delta)) / (2 * coef.a), im: Float(0.0))
        let x2=t_solutie(re: (-coef.b - sqrt(delta)) / (2 * coef.a), im: Float(0.0))
        
        let sol=t_solutii(x1: x1,x2: x2)
        return sol
        
   // return [[(-coef[1] - sqrt(delta)) / (2 * coef[0]), Float(0.0)], [(-coef[1] + sqrt(delta)) / (2 * coef[0]), Float(0.0)]]

    }
    else{
        let x1=t_solutie(re: -coef.b / (2 * coef.a), im: -sqrt(-delta) / (2 * coef.a))
        let x2=t_solutie(re: -coef.b / (2 * coef.a), im: sqrt(-delta) / (2 * coef.a))
        
        let sol=t_solutii(x1: x1, x2: x2)
        return sol
       // return [[(-coef[1]) / (2 * coef[0]), -sqrt(-delta) / (2 * coef[0])], [(-coef[1]) / (2 * coef[0]), sqrt(-delta) / (2 * coef[0])]]
    }
}
//---------------------------------------------------------
func tipareste(_ x: t_solutii)
{
    print("x1 = \(x.x1.re) + \(x.x1.im)")
    print("x2 = \(x.x2.re) + \(x.x2.im)")
    //print("x1 = \(x[0][0]) + \(x[0][1])")
    //print("x2 = \(x[1][0]) + \(x[1][1])")
}
//---------------------------------------------------------

    let coef = citire()
    var x = rezolva(coef)
    tipareste(x)