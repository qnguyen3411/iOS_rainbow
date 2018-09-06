//
//  ViewController.swift
//  iOS_rainbow
//
//  Created by Quang Nguyen on 9/6/18.
//  Copyright © 2018 Quang Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    tableView.dataSource = self
  }

}

extension ViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return colors.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
    // set text label to the model that is corresponding to the row in array
    cell.backgroundColor = colors[indexPath.row]
    cell.heightAnchor.constraint(equalToConstant: 120)
    
    // return cell so that Table View knows what to render in each row
    return cell
  }
}
