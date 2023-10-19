//
//  ViewController.swift
//  ejerc1ClaseDiTema1
//
//  Created by Montacer El Fazazi on 19/10/2023.
//

import UIKit
import Toast

class ViewController: UIViewController {
    
    @IBOutlet weak var ivComputer: UIImageView!
    @IBOutlet weak var lbUser: UILabel!
    @IBOutlet weak var lbOrdenador: UILabel!
    
    //variables
    var contadorUser: Int!
    var contadorComputer: Int!
    var eleccionUser: String!
    var eleccionComputer: String!
    
    var imagenes = [UIImage(named: "papel"),UIImage(named: "piedra"),UIImage(named: "tijera"),]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        contadorUser = 0
        contadorComputer = 0
    }



    @IBAction func btnPapelClick(_ sender: Any) {
        eleccionUser = "PAPEL"
        tiradaOrdenador()
        ganador()
    }
    
    
    @IBAction func btnTijeraClick(_ sender: Any) {
        eleccionUser = "TIJERA"
        tiradaOrdenador()
        ganador()


    }
    
    @IBAction func btnPiedraClick(_ sender: Any) {
        eleccionUser = "PIEDRA"
        tiradaOrdenador()
        ganador()


    }
    
    func tiradaOrdenador(){
        var numeroAleatorio: Int
        
        numeroAleatorio = Int.random(in: 0..<3)
        
        ivComputer.image = imagenes[numeroAleatorio]
        switch numeroAleatorio{
        case 0:
            eleccionComputer = "PAPEL"
        case 1:
            eleccionComputer = "PIEDRA"
        default:
            eleccionComputer = "TIJERA"

        }
    }
    
    func ganador(){
        if eleccionComputer == eleccionUser {
            self.view.makeToast("EMPATE")
        }else{
        switch eleccionUser{
        case "PAPEL":
            if eleccionComputer == "PIEDRA"{
            contadorUser += 1
                
            } else{
                contadorComputer += 1
            }
        case "PIEDRA":
            if eleccionComputer == "PAPEL"{
            contadorComputer += 1
                
            } else{
                contadorUser += 1
            }
        default:
            if eleccionComputer == "PAPEL"{
            contadorUser += 1
                
            } else{
                contadorComputer += 1
            }

            }
        }
        
        lbUser.text = "User:  \(String(contadorUser))"
        lbOrdenador.text = "Computer: \(String(contadorComputer))"
        
    }
    

}

