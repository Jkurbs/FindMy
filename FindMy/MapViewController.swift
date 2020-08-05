//
//  ViewController.swift
//  FindMy
//
//  Created by Kerby Jean on 8/3/20.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    // MARK: - UI Elements
    var mapView = MKMapView()
    var optionOverlay = OptionOverlay()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupLayoutConstraints()
    }
    
    // MARK: - Functions
    func setupViews() {
        mapView.frame = view.frame
        mapView.showsUserLocation = true
        view.addSubview(mapView)
        mapView.addSubview(optionOverlay)
    }
    
    func setupLayoutConstraints() {
        NSLayoutConstraint.activate([
            optionOverlay.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16.0),
            optionOverlay.topAnchor.constraint(equalTo: view.topAnchor, constant: 58.0),
            optionOverlay.widthAnchor.constraint(equalToConstant: 48.0),
            optionOverlay.heightAnchor.constraint(equalToConstant: 88.0)
        ])
        DispatchQueue.main.async {
            self.optionOverlay.layer.cornerRadius = 10
        }
    }
}

