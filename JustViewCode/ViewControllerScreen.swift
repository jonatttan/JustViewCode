//
//  ViewControllerScreen.swift
//  JustViewCode
//
//  Created by Jonattan Moises Sousa on 07/05/21.
//

import UIKit

final class ViewControllerScreen: UIView {
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        let button = UIButton(frame: .zero)
        button.backgroundColor = .red
        button.setTitle("Fetch", for: .normal)
        
        
        // Adicionar View
        addSubview(button)
        // Configurar constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        // Setup adicional
        
        backgroundColor = .darkGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

