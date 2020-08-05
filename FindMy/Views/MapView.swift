//
//  MapView.swift
//  FindMy
//
//  Created by Kerby Jean on 8/5/20.
//

import UIKit
import MapKit

class MapView: MKMapView {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // set compass position by setting its frame
        
        if let compassView = self.subviews.filter({$0.isKind(of: NSClassFromString("MKCompassView")!) }).first {
            compassView.frame = CGRect(x: self.frame.size.width - 60, y: 160, width: 36, height: 36)
        }
    }
}
