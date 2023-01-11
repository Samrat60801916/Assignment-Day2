//
//  ViewController.swift
//  HackerNews
//
//  Created by BKS-GGS on 10/01/23.
//

import UIKit

class NewsVC: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
    var hitsArray : [Hits] = []
    let parser = Parser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        parser.parse{
            data in
            self.hitsArray = data.hits ?? []
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
    }
}

 extension NewsVC : UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hitsArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell") as? NewsCell
        cell?.setData(title: hitsArray[indexPath.row].title, points: hitsArray[indexPath.row].points)
        return cell!
    }
}

