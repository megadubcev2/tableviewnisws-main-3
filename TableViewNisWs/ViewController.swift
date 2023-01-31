//
//  ViewController.swift
//  TableViewNisWs
//  Created by Dmitry Alexandrov
//  Read it:
//  https://ioscoachfrank.com/remove-main-storyboard.html
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var tableView: UITableView!
    let cellId = "MyCell"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }

    
    private func setupTableView() {
        let rect = CGRect(x: 15, y: 15, width: view.frame.width - 30, height: view.frame.height - 30)
        
        tableView = UITableView(frame: rect)
        tableView.register(MyCell.self, forCellReuseIdentifier: cellId)
        tableView.dataSource = self
        tableView.delegate = self

        tableView.rowHeight = 80
        tableView.showsVerticalScrollIndicator = true
        tableView.backgroundColor = UIColor.green //black
        tableView.translatesAutoresizingMaskIntoConstraints = false //
        tableView.layer.cornerRadius = 35
        tableView.layer.masksToBounds = true
        
        self.view.addSubview(tableView)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 31
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! MyCell
        cell.dateLabel.text = String(indexPath.row + 1)
        cell.dayLabel.text = "Fri"
        cell.distanceLabel.text = String((indexPath.row + 1) * 1000) + " m"
        
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true

        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
