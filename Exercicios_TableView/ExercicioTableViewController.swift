//
//  ExercicioTableViewController.swift
//  Exercicios_TableView
//
//  Created by Usuário Convidado on 27/08/20.
//  Copyright © 2020 Wilzin Co. All rights reserved.
//

import UIKit

class ExercicioTableViewController: UITableViewController {

    var myIndex:Int = 0
    
    var jogos = ["Horizon zero dawn", "Uncharted 4"]
    var empresas = ["Guerrilla", "Naugthy Dog"]
    var imagens = ["hor", "unc"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jogos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = jogos[indexPath.row]
        cell.imageView?.image = UIImage(named: imagens[indexPath.row])
        cell.detailTextLabel?.text = empresas[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let msg = "Você selecionou o jogo \(jogos[indexPath.row])"
        //let alerta = UIAlertController(title: "Aviso", message: msg, preferredStyle: UIAlertController.Style.alert)
        //alerta.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        //present(alerta, animated: true, completion: nil)
        
        myIndex = indexPath.row
        performSegue(withIdentifier: "abc", sender: nil)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let vc = segue.destination as! ViewController
        //vc.texto = jogos[myIndex]
        
        vc.texto = jogos[tableView.indexPathForSelectedRow!.item]
        vc.studio = empresas[tableView.indexPathForSelectedRow!.item]
        vc.imgTexto = imagens[tableView.indexPathForSelectedRow!.item]
    }
    

}
