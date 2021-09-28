//
//  ViewController.swift
//  Table Views Jesus
//
//  Created by Alumno on 9/27/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let zelda = tableView.dequeueReusableCell(withIdentifier: "cellAlumno") as! ZeldaAlumnoController
        zelda.lblNombre.text = nombres[indexPath.row]
        zelda.lblMatricula.text = matriculas[indexPath.row]
        zelda.lblPromedio.text = promedios[indexPath.row]
        return zelda
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 78
    }
    
    
    let nombres = ["Jose", "Ana", "Maria", "Andres"]
    let matriculas = ["123456", "789987", "456654", "321123"]
    let promedios = ["9.0", "7.0", "10.0", "11.1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

