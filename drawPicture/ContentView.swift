//
//  ContentView.swift
//  drawPicture
//
//  Created by guowei on 2020/7/17.
//  Copyright © 2020 guowei. All rights reserved.
//

import SwiftUI

struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        let path = UIBezierPath()
        var point = CGPoint(x: 0, y: 0)
        
        path.move(to: point)
        point = CGPoint(x: 700, y: 0)
        path.addLine(to: point)
        point = CGPoint(x: 100, y: 100)
        
        
        let Rightlogo = UIBezierPath()
        Rightlogo.move(to: CGPoint(x: 116, y: 26))
        Rightlogo.addLine(to: CGPoint(x: 116, y: 54))
        Rightlogo.addLine(to: CGPoint(x: 202, y: 7))
        Rightlogo.addLine(to: CGPoint(x: 180, y: 0))
        Rightlogo.addLine(to: CGPoint(x: 117, y: 25))
        
        let RightlogoBot = UIBezierPath()
        RightlogoBot.move(to: CGPoint(x: 115, y: 64))
        RightlogoBot.addLine(to: CGPoint(x: 150, y: 90))
        RightlogoBot.addLine(to: CGPoint(x: 197, y: 47))
        RightlogoBot.addLine(to: CGPoint(x: 205, y: 18))
        RightlogoBot.addLine(to: CGPoint(x: 115, y: 63))
              
        let LeftlogoBot = UIBezierPath()
        LeftlogoBot.move(to: CGPoint(x: 106, y: 64))
        LeftlogoBot.addLine(to: CGPoint(x: 18, y: 22))
        LeftlogoBot.addLine(to: CGPoint(x: 25, y: 45))
        LeftlogoBot.addLine(to: CGPoint(x: 74, y: 90))

        let Leftlogo = UIBezierPath()
        Leftlogo.move(to: CGPoint(x: 106, y: 26))
        Leftlogo.addLine(to: CGPoint(x: 43 , y: 0))
        Leftlogo.addLine(to: CGPoint(x: 19 , y: 9))
        Leftlogo.addLine(to: CGPoint(x: 106 , y: 54))
        
        let BotRight = UIBezierPath()
        BotRight.move(to: CGPoint(x: 108, y: 74))
        BotRight.addLine(to: CGPoint(x: 108 , y: 223))
        BotRight.addLine(to: CGPoint(x: 95 , y: 211))
        BotRight.addLine(to: CGPoint(x: 80 , y: 104))
        
        let BotLeft = UIBezierPath()
        BotLeft.move(to: CGPoint(x: 114, y: 74))
        BotLeft.addLine(to: CGPoint(x: 114 , y: 223))
        BotLeft.addLine(to: CGPoint(x: 128 , y: 211))
        BotLeft.addLine(to: CGPoint(x: 145 , y: 99))
      
        
        // let BotLeft = UIBezierPath()
        //BotLeft.move(to: CGPoint(x: 114, y: 74))
        //BotLeft.addLine(to: CGPoint(x: 114 , y: 223))
        //let LeftBotLayer = CAShapeLayer()
        //LeftBotLayer.path = LeftlogoBot.cgPath
        //view.layer.addSublayer(BotLeftLayer)
        
        
        let LeftBotLayer = CAShapeLayer()
        LeftBotLayer.path = LeftlogoBot.cgPath
        let RightLogoLayer = CAShapeLayer()
        RightLogoLayer.path = Rightlogo.cgPath
        let LeftLogoLayer = CAShapeLayer()
        LeftLogoLayer.path = Leftlogo.cgPath
        let RightBotLayer = CAShapeLayer()
        RightBotLayer.path = RightlogoBot.cgPath
        let BotRightLayer = CAShapeLayer()
        BotRightLayer.path = BotRight.cgPath
        let BotLeftLayer = CAShapeLayer()
        BotLeftLayer.path = BotLeft.cgPath
        
        view.layer.addSublayer(BotLeftLayer)
        view.layer.addSublayer(BotRightLayer)
        view.layer.addSublayer(RightBotLayer)
        view.layer.addSublayer(LeftBotLayer)
        view.layer.addSublayer(RightLogoLayer)
        view.layer.addSublayer(LeftLogoLayer)
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
