//
//  ViewController.swift
//  HWS-P1
//
//  Created by dearjeah on 24/09/23.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigation()
        self.getItems()
    }
    
    func setupNavigation() {
        title = "Storm Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func getItems() {
        let fm = FileManager.default
        
        // note: it's ok to use 'forced' in this case cause we know the files are there
        // use optional if you are not sure
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
    }
}

// MARK: TableView
extension ViewController {
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

