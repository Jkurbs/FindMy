//
//  OptionOverlay.swift
//  FindMy
//
//  Created by Kerby Jean on 8/5/20.
//

import UIKit

class OptionOverlay: UIView {
    
    var infoButton = UIButton()
    var recenterButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupLayoutConstraints()
    }
    
    func setupViews() {
        backgroundColor = .systemBackground
        translatesAutoresizingMaskIntoConstraints = false
        
                
        
        let buttonConfiguration = UIImage.SymbolConfiguration(scale: .large)

        infoButton.setImage(UIImage(systemName: "info.circle", withConfiguration: buttonConfiguration), for: .normal)
        infoButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(infoButton)
        recenterButton.setImage(UIImage(systemName: "location", withConfiguration: buttonConfiguration), for: .normal)
        recenterButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(recenterButton)
    }
    
    func setupLayoutConstraints() {
        NSLayoutConstraint.activate([
        
            infoButton.widthAnchor.constraint(equalTo: widthAnchor),
            infoButton.heightAnchor.constraint(equalTo: infoButton.widthAnchor),
            
            recenterButton.widthAnchor.constraint(equalTo: widthAnchor),
            recenterButton.heightAnchor.constraint(equalTo: recenterButton.widthAnchor),
            recenterButton.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
