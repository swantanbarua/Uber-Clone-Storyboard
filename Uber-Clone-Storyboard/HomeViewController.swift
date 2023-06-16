//
//  HomeViewController.swift
//  Uber-Clone-Storyboard
//
//  Created by Swantan Barua on 16/06/23.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - IBOUTLETS
    
    @IBOutlet weak var whereToInnerView: UIView!
    @IBOutlet weak var nowView: UIView!
    @IBOutlet weak var destinationSuggestionTableView: UITableView!
    
    // MARK: - VIEW CONTROLLER LIFECYCLE METHODS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        destinationSuggestionTableView.register(UINib(nibName: IdentifierConstants.DestinationSuggestionsTableViewCell, bundle: nil), forCellReuseIdentifier: IdentifierConstants.DestinationSuggestionsTableViewCell)
        destinationSuggestionTableView.delegate = self
        destinationSuggestionTableView.dataSource = self
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        whereToInnerView.layer.cornerRadius = 45
        nowView.layer.cornerRadius = 25
    }
}

extension HomeViewController: UITableViewDelegate {
    
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return destinationSuggestionHeaders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: IdentifierConstants.DestinationSuggestionsTableViewCell, for: indexPath) as! DestinationSuggestionsTableViewCell
        cell.destinationHeader.text = destinationSuggestionHeaders[indexPath.row]
        cell.destinationAddress.text = destinationSuggestionAddresses[indexPath.row]
        return cell
    }
}
