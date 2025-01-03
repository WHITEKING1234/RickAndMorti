//
//  TableViewModel.swift
//  rickAndMorti
//
//  Created by Mac on 2/1/25.
//

import UIKit

class TableViewModel {
    private var item:[Item] = []
    
    func fetchItems() {
        item = [Item(name: "nadik", surName: "Roziev")]
    }
    
    func numberOfRows() -> Int {
            return item.count
        }
        
        func item(at index: Int) -> Item {
            return item[index]
        }
    }
