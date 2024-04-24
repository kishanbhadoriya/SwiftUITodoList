//
//  ListViewModel.swift
//  TodoList
//
//  Created by Kishan on 22/03/24.
//

import Foundation


class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItem()
        }
    }
    let itemsKey: String = "item_key"
    
    
    init() {
        getItem()
    }
    
    func getItem() {
//        let newItem = [
//            ItemModel(title: "This is first title!", isCompleted: false),
//            ItemModel(title: "This is second title!", isCompleted: true),
//            ItemModel(title: "This is third title!", isCompleted: false)
//        ]
//        items.append(contentsOf: newItem)
        guard let data = UserDefaults.standard.data(forKey: itemsKey), let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data) else { return }
        items = savedItems
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
    }
    
    func saveItem() {
        if let encodeData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodeData, forKey: itemsKey)
        }
    }
}
