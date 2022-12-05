//
//  Dynamic.swift
//  MVVM-C
//
//  Created by Legenda_759 on 02/12/22.
//

import Foundation

class Dynamic<T> {
    
    typealias Listener = (T) -> Void
    private var listener: Listener?
    
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
}
