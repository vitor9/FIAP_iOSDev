//
//  UIViewController+Context.swift
//  MyGames
//
//  Created by Usuário Convidado on 24/08/2018.
//  Copyright © 2018 FIAP. All rights reserved.
//
import UIKit

import Foundation
import CoreData

extension UIViewController {
    var context: NSManagedObjectContext {
        return (UIApplication.shared.delegate as! AppDelegate)
            .persistentContainer.viewContext
    }
}
