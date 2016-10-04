//
//  TitleTableViewController.swift
//  Swifty Responder Chain
//
//  Created by Brandon Alexander on 4/27/16.
//  Copyright © 2016 Black Pixel. All rights reserved.
//

import UIKit

class TitleTableViewController: UITableViewController {
    private let dataSource = ["The Phantom Menace", "Attack of the Clones", "Revenge of the Sith", "A New Hope", "Empire Strikes Back", "Return of the Jedi", "The Force Awakens"];
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier("TableViewCell")!
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        guard let tableCell = cell as? TitleTableViewCell else {
            return
        }
        
        tableCell.configureWithTitle(dataSource[indexPath.row])
    }
    
}

extension TitleTableViewController : TitleTableViewCellActionHandler {
    func updateTitleForCell(sender: AnyObject, forEvent event:TitleEvent) {
        title = event.title
    }
}
