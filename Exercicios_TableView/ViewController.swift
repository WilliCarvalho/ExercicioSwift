//
//  ViewController.swift
//  Exercicios_TableView
//
//  Created by Usuário Convidado on 27/08/20.
//  Copyright © 2020 Wilzin Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblGameStudio: UILabel!
    @IBOutlet weak var lblGameName: UILabel!
    @IBOutlet weak var imgCapa: UIImageView!
    
    var texto:String = ""
    var studio:String = ""
    var imgTexto:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblGameName.text = texto
        lblGameStudio.text = studio
        imgCapa.image = UIImage(named: imgTexto)
    }


}

