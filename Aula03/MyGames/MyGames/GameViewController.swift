//
//  GameViewController.swift
//  MyGames
//
//  Created by Usuário Convidado on 24/08/2018.
//  Copyright © 2018 FIAP. All rights reserved.
//

import UIKit

class GameViewController: UITableViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfConsole: UITextField!
    @IBOutlet weak var btAddEdit: UIButton!
    
    var game: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if game != nil {
            tfName.text = game.name
            tfConsole.text = game.console
            btAddEdit.setTitle(("Editar Game"), for: .normal)
        }
    }

    @IBAction func addEditGame(_ sender: Any) {
        if game == nil {
            game = Game(context: context)
        }
        game.name = tfName.text
        game.console = tfConsole.text
        try? context.save()
        navigationController?.popViewController(animated: true)
    }
    
}
