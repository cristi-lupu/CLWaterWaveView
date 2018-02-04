//
//  CrossroadsViewController.swift
//  CLWaterWaveView_Example
//
//  Created by Lupu Cristian on 2/4/18.
//  Copyright © 2018 Lupu Cristian. All rights reserved.
//

import Foundation
import UIKit

final class CrossroadsViewController: UIViewController {

    @IBOutlet weak private var tableView: UITableView!

    private let cellReuseId = "Demo Cell"

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseId)
        tableView.tableFooterView = UIView()
    }

}

extension CrossroadsViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseId)!

        cell.selectionStyle = .none
        cell.textLabel?.textColor = .orange
        cell.backgroundColor = .clear

        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Via Interface Builder"
        case 1:
            cell.textLabel?.text = "Two Waves"
        default:
            break
        }

        return cell
    }

}

extension CrossroadsViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        guard let cell = tableView.cellForRow(at: indexPath) else {
            return
        }

        switch indexPath.row {
        case 0:
            let vc = IBFabric.interfaceBuilderExampleViewController
            vc.title = cell.textLabel?.text
            navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = IBFabric.twoWavesViewController
            vc.title = cell.textLabel?.text
            navigationController?.pushViewController(vc, animated: true)
        default:
            break
        }
    }

    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else {
            return
        }
        cell.backgroundColor = .black
    }

    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else {
            return
        }
        cell.backgroundColor = .clear
    }

}
