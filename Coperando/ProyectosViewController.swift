//
//  ViewController.swift
//  Coperando
//
//  Created by guitarrkurt on 01/05/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

class ProyectosViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
//MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
//MARK: - Propertys
    var refreshControl: UIRefreshControl!
//MARK: - Arrays
    var arrayImage = ["mickey", "mickey", "mickey", "mickey", "mickey"]
    var arrayTitulo = ["mickey", "mickey", "mickey", "mickey", "mickey"]
    var arrayDescripcion = ["mickey", "mickey", "mickey", "mickey", "mickey"]
    var indexSelected = 0
    
//MARK: - Constructor
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cargarRefreshControl()
    }
    
    func refresh(){
        refreshControl.endRefreshing()
    }
    
    func cargarRefreshControl(){
        refreshControl = UIRefreshControl()
        //        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        refreshControl.tintColor = UIColor(red: 255.0/255.0, green: 64.0/255.0, blue: 129.0/255.0, alpha: 1.0)
        refreshControl.addTarget(self, action: #selector(ProyectosViewController.refresh), forControlEvents: UIControlEvents.ValueChanged)
        tableView.addSubview(refreshControl)
    }
    
//MARK: - Data Souce
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return arrayImage.count
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! ProyectoTableViewCell
        cell.imagen.image = UIImage(named: arrayImage[indexPath.row])
        cell.labelTitulo.text = arrayTitulo[indexPath.row]
        cell.labelDescripcion.text = arrayDescripcion[indexPath.row]
        
        return cell
    }
//MARK: - Delegate
    internal func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        indexSelected = indexPath.row
        performSegueWithIdentifier("ProyectosDescripcionIdentifier", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ProyectosDescripcionIdentifier"{
            let vc = segue.destinationViewController as! DescripcionViewController
            vc.nameImage = arrayImage[indexSelected]
            vc.txtLabTit = arrayTitulo[indexSelected]
            vc.txtLabDescr = arrayDescripcion[indexSelected]
        }
     }
}

