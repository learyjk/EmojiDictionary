//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Keegan Leary on 5/23/18.
//  Copyright © 2018 Keegan Leary. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis = ["😀","💩","🏎","💒","🍎"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "carSegue", sender: nil)
    }

}
