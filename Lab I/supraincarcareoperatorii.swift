import Foundation

class t_note_student{
    var note: [String: Int]
    
    init(){
        note = [:]
    }
    
    init(_ materie: String, _ nota: Int){
        note = [materie: nota]
    }
    
    deinit{
        note = [:]
    }
    
    func adauga(_ materie: String, _ nota: Int){
        note[materie] = nota
    }
    
    func actualizare(_ materie: String, _ nota: Int){
        note[materie] = nota
    }
    
    func sterge(_ materie: String){
        note[materie] = nil
    }
    
    func tipareste_carnet(){
        print("Notele sunt: ")
        for(materie, nota) in note{
            print("Nota la materia \(materie) este \(nota)")
        }
    }
    
    func tipareste_restante(){
        print("Restantele sunt: ")
        for(materie, nota) in note{
            if nota < 5{
                print("Nota la materia \(materie) este \(nota)")
            }
        }
    }
    
    func calculeaza_media()->Float{
        var media = Float(0.0)
        for nota in note.values{
            media += Float(nota)
        }
        media /= Float(note.count)
        return media
    }
    
    func gaseste_nota(_ materie: String)->Int{
        if let nota = note[materie]{
            return nota
        }
        return -1
    }
    
    // Supraincarca operatorul
    subscript(index: String)->Int{
        get{
            return gaseste_nota(index)
        }
        set(nota){
            note[index] = nota
        }
    }
}

enum teste{
    case constructor
    case adauga
    case sterge
    case restante
    case media
    case gaseste
    case index
}

let test = teste.index

switch test{
    case .constructor:
    let note_student = t_note_student("Sport", 10)
    note_student.tipareste_carnet()
    
    case .adauga:
    let note_student = t_note_student()
    note_student.adauga("MVDP", 10)
    note_student.adauga("POO", 10)
    note_student.tipareste_carnet()
    
    case .sterge:
    let note_student = t_note_student()
    note_student.adauga("MVDP", 10)
    note_student.adauga("POO", 10)
    note_student.sterge("MVDP")
    note_student.tipareste_carnet()
    
    case .restante:
    let note_student = t_note_student()
    note_student.adauga("MVDP", 10)
    note_student.adauga("POO", 4)
    note_student.tipareste_restante()
    
    case .media:
    let note_student = t_note_student()
    note_student.adauga("MVDP", 8)
    note_student.adauga("POO", 10)
    let media = note_student.calculeaza_media()
    print("Media = \(media)")
    
     case .gaseste:
    let note_student = t_note_student()
    note_student.adauga("MVDP", 6)
    note_student.adauga("POO", 4)
    let materie = "MVDP"
    let nota = note_student.gaseste_nota(materie)
    if nota > -1{
        print("Nota la materia \(materie) este = \(nota)")
    }
    else{
        print("Nu avem nota la materia \(materie)")
    }
    
    case .index:
    let note_student = t_note_student()
    note_student["MVDP"] = 5
    print(note_student["MVDP"])
}


