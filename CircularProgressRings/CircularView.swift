
//  Created by Kwan Ho Leung on 27/3/2022.
//

import SwiftUI

struct CircularView: UIViewRepresentable{
    
    @Binding var sliderValue: Double
    
    func makeUIView(context: Context) -> UIView {
        let cView = UIView()
        return cView

    }
    func updateUIView(_ uiView: UIView, context: Context) {
        let radianConverter = CGFloat.pi / 180 // degree*self = raidian
        
        uiView.layer.sublayers?.first?.removeFromSuperlayer()
        
        let percentagePath = UIBezierPath(arcCenter: CGPoint(x: 195, y: 80), radius: 50, startAngle: CGFloat(270) * radianConverter , endAngle: CGFloat(270 + sliderValue) * radianConverter, clockwise: true)
        
        let percentagePathLayer = CAShapeLayer()
        percentagePathLayer.path = percentagePath.cgPath
        percentagePathLayer.fillColor = UIColor.clear.cgColor
        percentagePathLayer.strokeColor = UIColor.blue.cgColor
        percentagePathLayer.lineWidth = 8
        percentagePathLayer.lineCap = .round
        
        uiView.layer.addSublayer(percentagePathLayer)
    }
}
