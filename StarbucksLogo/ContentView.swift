//
//  ContentView.swift
//  StarbucksLogo
//
//  Created by Sharon on 2020/11/18.
//

import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()

        //畫出底圖綠色的圓形
        let aDegree = CGFloat.pi / 180 //一度大小
        let path = UIBezierPath(arcCenter: CGPoint(x:195, y: 190), radius: 190, startAngle: aDegree * 0, endAngle: aDegree * 360, clockwise: true)

        let greenLayer = CAShapeLayer()
        greenLayer.path = path.cgPath
        greenLayer.fillColor = UIColor.init(named: "starbucks")?.cgColor
        view.layer.addSublayer(greenLayer)
        
        //畫出上方皇冠
        let path1 = UIBezierPath()
        
        path1.move(to: CGPoint(x: 172, y: 54))

        path1.addLine(to: CGPoint(x: 155, y: 37))

        path1.addLine(to: CGPoint(x: 179, y: 34))
        path1.addLine(to: CGPoint(x: 190, y: 12))
        path1.addLine(to: CGPoint(x: 199, y: 34))
        path1.addLine(to: CGPoint(x: 225, y: 37))
        path1.addLine(to: CGPoint(x: 206, y: 54))
        path1.addLine(to: CGPoint(x: 215, y: 74))
        path1.move(to: CGPoint(x: 215, y: 74))
        path1.addQuadCurve(to: CGPoint(x: 258, y: 56), controlPoint: CGPoint(x: 230, y: 61))
        path1.addLine(to: CGPoint(x: 242, y: 86))

        path1.move(to: CGPoint(x: 242, y: 86))
        path1.addQuadCurve(to: CGPoint(x: 278, y: 74), controlPoint: CGPoint(x: 257, y: 77))
        
        path1.addLine(to: CGPoint(x: 255, y: 111))

        path1.addQuadCurve(to: CGPoint(x: 124, y: 111), controlPoint: CGPoint(x: 191, y: 78))
        path1.addLine(to: CGPoint(x: 102, y: 74))
        
        path1.addQuadCurve(to: CGPoint(x: 136, y: 86), controlPoint: CGPoint(x: 121, y: 77))

        path1.addLine(to: CGPoint(x: 122, y: 56))
        path1.addQuadCurve(to: CGPoint(x: 164, y: 74), controlPoint: CGPoint(x: 148, y: 60))
        path1.addLine(to: CGPoint(x: 172, y: 54))
        
        
        let blueTriangleLayer = CAShapeLayer()
        blueTriangleLayer.path = path1.cgPath
        blueTriangleLayer.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(blueTriangleLayer)
        
        //皇冠內的小三角形
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 190, y: 66))
        path2.addLine(to: CGPoint(x: 209, y: 81))
        path2.addLine(to: CGPoint(x: 170, y: 81))
        path2.close()

        let greenTriangleLayer = CAShapeLayer()
        greenTriangleLayer.path = path2.cgPath
        greenTriangleLayer.fillColor = UIColor.init(named: "starbucks")?.cgColor
        view.layer.addSublayer(greenTriangleLayer)
        
        //臉
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 153, y: 128))
        path3.addQuadCurve(to: CGPoint(x: 226, y: 128), controlPoint: CGPoint(x: 190, y: 90))
        path3.addQuadCurve(to: CGPoint(x: 197, y: 134), controlPoint: CGPoint(x: 210, y: 124))
        path3.addQuadCurve(to: CGPoint(x: 198, y: 155), controlPoint: CGPoint(x: 195, y: 145))
        
        path3.addLine(to: CGPoint(x: 204, y: 147))
        path3.addQuadCurve(to: CGPoint(x: 223, y: 147), controlPoint: CGPoint(x: 214, y: 150))
        path3.addQuadCurve(to: CGPoint(x: 207, y: 195), controlPoint: CGPoint(x: 229, y: 178))
        
        //下巴
        path3.addQuadCurve(to: CGPoint(x: 172, y: 195), controlPoint: CGPoint(x: 190, y: 210))


        path3.addQuadCurve(to: CGPoint(x: 155, y: 147), controlPoint: CGPoint(x: 151, y: 178))

        path3.addQuadCurve(to: CGPoint(x: 175, y: 146), controlPoint: CGPoint(x: 165, y: 150))
        path3.addLine(to: CGPoint(x: 182, y: 150))

        path3.addQuadCurve(to: CGPoint(x: 182, y: 132), controlPoint: CGPoint(x: 183, y: 141))
        path3.addQuadCurve(to: CGPoint(x: 153, y: 128), controlPoint: CGPoint(x: 168, y: 124))
        
        let faceLayer = CAShapeLayer()
        faceLayer.path = path3.cgPath
        faceLayer.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(faceLayer)
        
        //左眼
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 156, y: 142))
        path4.addQuadCurve(to: CGPoint(x: 157, y: 132), controlPoint: CGPoint(x: 151, y: 135))
        path4.addQuadCurve(to: CGPoint(x: 176, y: 140), controlPoint: CGPoint(x: 169, y: 130))
        path4.addQuadCurve(to: CGPoint(x: 156, y: 142), controlPoint: CGPoint(x: 160, y: 137))
        
        let leftEyeLayer = CAShapeLayer()
        leftEyeLayer.path = path4.cgPath
        leftEyeLayer.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(leftEyeLayer)
        
        //右眼
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 206, y: 140))
        path5.addQuadCurve(to: CGPoint(x: 223, y: 132), controlPoint: CGPoint(x: 206, y: 131))
        path5.addQuadCurve(to: CGPoint(x: 223, y: 141), controlPoint: CGPoint(x: 228, y: 135))
        path5.addQuadCurve(to: CGPoint(x: 206, y: 140), controlPoint: CGPoint(x: 218, y: 137))
        
        let rightEyeLayer = CAShapeLayer()
        rightEyeLayer.path = path5.cgPath
        rightEyeLayer.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(rightEyeLayer)
        
        //鼻子
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 180, y: 166))
        path6.addQuadCurve(to: CGPoint(x: 198, y: 166), controlPoint: CGPoint(x: 189, y: 169))
        path6.addQuadCurve(to: CGPoint(x: 190, y: 164), controlPoint: CGPoint(x: 193, y: 162))
        path6.addQuadCurve(to: CGPoint(x: 180, y: 166), controlPoint: CGPoint(x: 185, y: 162))
        
        let noseLayer = CAShapeLayer()
        noseLayer.path = path6.cgPath
        noseLayer.fillColor = UIColor.init(named: "starbucks")?.cgColor
        view.layer.addSublayer(noseLayer)
        
        //嘴巴
        let path7 = UIBezierPath()
        path7.move(to: CGPoint(x: 175, y: 177))
        path7.addQuadCurve(to: CGPoint(x: 204, y: 177), controlPoint: CGPoint(x: 190, y: 195))
        path7.addQuadCurve(to: CGPoint(x: 175, y: 177), controlPoint: CGPoint(x: 189, y: 179))
        
        
        let mouthLayer = CAShapeLayer()
        mouthLayer.path = path7.cgPath
        mouthLayer.fillColor = UIColor.init(named: "starbucks")?.cgColor
        view.layer.addSublayer(mouthLayer)
        
        //身體
        let path8 = UIBezierPath()
        path8.move(to: CGPoint(x: 172, y: 210))
        path8.addQuadCurve(to: CGPoint(x: 208, y: 210), controlPoint: CGPoint(x: 190, y: 214))
        path8.addQuadCurve(to: CGPoint(x: 221, y: 233), controlPoint: CGPoint(x: 212, y: 223))
        path8.addQuadCurve(to: CGPoint(x: 216, y: 287), controlPoint: CGPoint(x: 236, y: 256))
        path8.addQuadCurve(to: CGPoint(x: 217, y: 340), controlPoint: CGPoint(x: 203, y: 312))
        path8.addQuadCurve(to: CGPoint(x: 228, y: 377), controlPoint: CGPoint(x: 224, y: 359))
        path8.addQuadCurve(to: CGPoint(x: 156, y: 377), controlPoint: CGPoint(x: 190, y: 398))
        
        path8.addQuadCurve(to: CGPoint(x: 163, y: 340), controlPoint: CGPoint(x: 158, y: 357))
        path8.addQuadCurve(to: CGPoint(x: 163, y: 287), controlPoint: CGPoint(x: 175, y: 312))
        path8.addQuadCurve(to: CGPoint(x: 160, y: 233), controlPoint: CGPoint(x: 144, y: 256))
        path8.addQuadCurve(to: CGPoint(x: 172, y: 210), controlPoint: CGPoint(x: 171, y: 214))
        
        let bodyLayer = CAShapeLayer()
        bodyLayer.path = path8.cgPath
        bodyLayer.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(bodyLayer)
        
        //右邊頭髮
        let path9 = UIBezierPath()
        path9.move(to: CGPoint(x: 220, y: 108))
        path9.addQuadCurve(to: CGPoint(x: 241, y: 178), controlPoint: CGPoint(x: 250, y: 145))
        path9.addQuadCurve(to: CGPoint(x: 247, y: 234), controlPoint: CGPoint(x: 230, y: 208))
        path9.addQuadCurve(to: CGPoint(x: 241, y: 289), controlPoint: CGPoint(x: 260, y: 255))
        path9.addQuadCurve(to: CGPoint(x: 245, y: 341), controlPoint: CGPoint(x: 231, y: 311))
        path9.addQuadCurve(to: CGPoint(x: 253, y: 369), controlPoint: CGPoint(x: 253, y: 358))
        
        path9.addQuadCurve(to: CGPoint(x: 236, y: 376), controlPoint: CGPoint(x: 256, y: 387))
        path9.addQuadCurve(to: CGPoint(x: 228, y: 341), controlPoint: CGPoint(x: 237, y: 357))
        path9.addQuadCurve(to: CGPoint(x: 227, y: 289), controlPoint: CGPoint(x: 214, y: 318))
        path9.addQuadCurve(to: CGPoint(x: 232, y: 234), controlPoint: CGPoint(x: 246, y: 257))
        path9.addQuadCurve(to: CGPoint(x: 229, y: 178), controlPoint: CGPoint(x: 216, y: 208))
        path9.addQuadCurve(to: CGPoint(x: 220, y: 108), controlPoint: CGPoint(x: 245, y: 148))
        
        
        path9.move(to: CGPoint(x: 235, y: 113))
        path9.addQuadCurve(to: CGPoint(x: 260, y: 180), controlPoint: CGPoint(x: 270, y: 147))
        path9.addQuadCurve(to: CGPoint(x: 267, y: 234), controlPoint: CGPoint(x: 250, y: 207))
        path9.addQuadCurve(to: CGPoint(x: 265, y: 289), controlPoint: CGPoint(x: 280, y: 257))
        path9.addQuadCurve(to: CGPoint(x: 271, y: 341), controlPoint: CGPoint(x: 251, y: 311))
        path9.addQuadCurve(to: CGPoint(x: 276, y: 367), controlPoint: CGPoint(x: 280, y: 358))
        
        path9.addQuadCurve(to: CGPoint(x: 265, y: 367), controlPoint: CGPoint(x: 280, y: 362))
        path9.addQuadCurve(to: CGPoint(x: 256, y: 338), controlPoint: CGPoint(x: 266, y: 359))
        path9.addQuadCurve(to: CGPoint(x: 255, y: 285), controlPoint: CGPoint(x: 241, y: 309))
        path9.addQuadCurve(to: CGPoint(x: 255, y: 231), controlPoint: CGPoint(x: 268, y: 255))
        path9.addQuadCurve(to: CGPoint(x: 251, y: 179), controlPoint: CGPoint(x: 241, y: 205))
        path9.addQuadCurve(to: CGPoint(x: 235, y: 113), controlPoint: CGPoint(x: 259, y: 150))
        
        
        path9.move(to: CGPoint(x: 252, y: 121))
        path9.addQuadCurve(to: CGPoint(x: 277, y: 188), controlPoint: CGPoint(x: 283, y: 159))
        path9.addQuadCurve(to: CGPoint(x: 285, y: 229), controlPoint: CGPoint(x: 272, y: 207))
        path9.addQuadCurve(to: CGPoint(x: 297, y: 258), controlPoint: CGPoint(x: 299, y: 250))
        path9.addQuadCurve(to: CGPoint(x: 329, y: 270), controlPoint: CGPoint(x: 311, y: 267))
        path9.addQuadCurve(to: CGPoint(x: 317, y: 301), controlPoint: CGPoint(x: 325, y: 285))
        path9.addQuadCurve(to: CGPoint(x: 279, y: 284), controlPoint: CGPoint(x: 301, y: 300))
        path9.addQuadCurve(to: CGPoint(x: 276, y: 233), controlPoint: CGPoint(x: 290, y: 256))
        path9.addQuadCurve(to: CGPoint(x: 269, y: 182), controlPoint: CGPoint(x: 262, y: 209))
        path9.addQuadCurve(to: CGPoint(x: 252, y: 121), controlPoint: CGPoint(x: 275, y: 152))
        
        
        path9.move(to: CGPoint(x: 273, y: 295))
        path9.addQuadCurve(to: CGPoint(x: 282, y: 325), controlPoint: CGPoint(x: 272, y: 310))
        path9.addQuadCurve(to: CGPoint(x: 296, y: 352), controlPoint: CGPoint(x: 296, y: 344))
        path9.addQuadCurve(to: CGPoint(x: 286, y: 357), controlPoint: CGPoint(x: 291, y: 355))
        path9.addQuadCurve(to: CGPoint(x: 276, y: 330), controlPoint: CGPoint(x: 286, y: 348))
        path9.addQuadCurve(to: CGPoint(x: 273, y: 295), controlPoint: CGPoint(x: 265, y: 310))

        let rightHairLayer = CAShapeLayer()
        rightHairLayer.path = path9.cgPath
        rightHairLayer.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(rightHairLayer)
        
        //左邊頭髮
        let path10 = UIBezierPath()
        path10.move(to: CGPoint(x: 156, y: 108))
        path10.addQuadCurve(to: CGPoint(x: 151, y: 178), controlPoint: CGPoint(x: 135, y: 145))
        path10.addQuadCurve(to: CGPoint(x: 147, y: 234), controlPoint: CGPoint(x: 163, y: 205))
        path10.addQuadCurve(to: CGPoint(x: 153, y: 289), controlPoint: CGPoint(x: 136, y: 256))
        path10.addQuadCurve(to: CGPoint(x: 151, y: 341), controlPoint: CGPoint(x: 164, y: 309))
        path10.addQuadCurve(to: CGPoint(x: 142, y: 374), controlPoint: CGPoint(x: 142, y: 360))
        
        path10.addQuadCurve(to: CGPoint(x: 127, y: 369), controlPoint: CGPoint(x: 133, y: 372))
        path10.addQuadCurve(to: CGPoint(x: 135, y: 341), controlPoint: CGPoint(x: 127, y: 354))
        path10.addQuadCurve(to: CGPoint(x: 138, y: 289), controlPoint: CGPoint(x: 149, y: 309))
        path10.addQuadCurve(to: CGPoint(x: 134, y: 234), controlPoint: CGPoint(x: 119, y: 257))
        path10.addQuadCurve(to: CGPoint(x: 139, y: 178), controlPoint: CGPoint(x: 150, y: 208))
        path10.addQuadCurve(to: CGPoint(x: 156, y: 108), controlPoint: CGPoint(x: 126, y: 152))
        
        //2
        path10.move(to: CGPoint(x: 141, y: 113))
        path10.addQuadCurve(to: CGPoint(x: 129, y: 178), controlPoint: CGPoint(x: 122, y: 150))
        path10.addQuadCurve(to: CGPoint(x: 122, y: 234), controlPoint: CGPoint(x: 139, y: 204))
        path10.addQuadCurve(to: CGPoint(x: 127, y: 289), controlPoint: CGPoint(x: 110, y: 253))
        path10.addQuadCurve(to: CGPoint(x: 122, y: 341), controlPoint: CGPoint(x: 137, y: 308))
        path10.addQuadCurve(to: CGPoint(x: 114, y: 364), controlPoint: CGPoint(x: 116, y: 352))
        
        path10.addQuadCurve(to: CGPoint(x: 104, y: 369), controlPoint: CGPoint(x: 107, y: 362))
        
        path10.addQuadCurve(to: CGPoint(x: 108, y: 342), controlPoint: CGPoint(x: 105, y: 348))
        path10.addQuadCurve(to: CGPoint(x: 116, y: 289), controlPoint: CGPoint(x: 124, y: 306))
        path10.addQuadCurve(to: CGPoint(x: 111, y: 234), controlPoint: CGPoint(x: 98, y: 253))
        path10.addQuadCurve(to: CGPoint(x: 118, y: 178), controlPoint: CGPoint(x: 127, y: 207))
        path10.addQuadCurve(to: CGPoint(x: 141, y: 113), controlPoint: CGPoint(x: 111, y: 152))
        
        //3
        path10.move(to: CGPoint(x: 125, y: 121))
        path10.addQuadCurve(to: CGPoint(x: 110, y: 178), controlPoint: CGPoint(x: 106, y: 154))
        path10.addQuadCurve(to: CGPoint(x: 102, y: 234), controlPoint: CGPoint(x: 119, y: 209))
        path10.addQuadCurve(to: CGPoint(x: 101, y: 283), controlPoint: CGPoint(x: 90, y: 253))
        
        path10.addQuadCurve(to: CGPoint(x: 61, y: 298), controlPoint: CGPoint(x: 85, y: 297))
        path10.addQuadCurve(to: CGPoint(x: 51, y: 269), controlPoint: CGPoint(x: 54, y: 284))
        path10.addQuadCurve(to: CGPoint(x: 83, y: 257), controlPoint: CGPoint(x: 68, y: 267))
        
        path10.addQuadCurve(to: CGPoint(x: 91, y: 234), controlPoint: CGPoint(x: 81, y: 250))
        path10.addQuadCurve(to: CGPoint(x: 102, y: 178), controlPoint: CGPoint(x: 109, y: 206))
        path10.addQuadCurve(to: CGPoint(x: 125, y: 121), controlPoint: CGPoint(x: 97, y: 164))
        
        path10.move(to: CGPoint(x: 107, y: 295))
        path10.addQuadCurve(to: CGPoint(x: 106, y: 325), controlPoint: CGPoint(x: 114, y: 308))
        path10.addQuadCurve(to: CGPoint(x: 93, y: 353), controlPoint: CGPoint(x: 95, y: 343))
        path10.addQuadCurve(to: CGPoint(x: 84, y: 347), controlPoint: CGPoint(x: 87, y: 350))
        
        path10.addQuadCurve(to: CGPoint(x: 92, y: 332), controlPoint: CGPoint(x: 87, y: 338))
        path10.addQuadCurve(to: CGPoint(x: 107, y: 295), controlPoint: CGPoint(x: 108, y: 306))
        
        let leftHairLayer = CAShapeLayer()
        leftHairLayer.path = path10.cgPath
        leftHairLayer.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(leftHairLayer)

        //右邊尾巴
        let path11 = UIBezierPath()
        //1
        path11.move(to: CGPoint(x: 272, y: 121))
        path11.addQuadCurve(to: CGPoint(x: 316, y: 125), controlPoint: CGPoint(x: 293, y: 116))
        path11.addQuadCurve(to: CGPoint(x: 349, y: 92), controlPoint: CGPoint(x: 320, y: 108))
        path11.addQuadCurve(to: CGPoint(x: 374, y: 169), controlPoint: CGPoint(x: 342, y: 123))
        path11.addQuadCurve(to: CGPoint(x: 345, y: 164), controlPoint: CGPoint(x: 363, y: 172))
        path11.addQuadCurve(to: CGPoint(x: 308, y: 159), controlPoint: CGPoint(x: 320, y: 154))
        path11.addQuadCurve(to: CGPoint(x: 272, y: 121), controlPoint: CGPoint(x: 292, y: 137))
        
        //2
        path11.move(to: CGPoint(x: 314, y: 170))
        path11.addQuadCurve(to: CGPoint(x: 345, y: 175), controlPoint: CGPoint(x: 333, y: 169))
        path11.addQuadCurve(to: CGPoint(x: 386, y: 184), controlPoint: CGPoint(x: 367, y: 185))
        path11.addQuadCurve(to: CGPoint(x: 386, y: 201), controlPoint: CGPoint(x: 385, y: 190))
        path11.addQuadCurve(to: CGPoint(x: 352, y: 195), controlPoint: CGPoint(x: 363, y: 201))
        path11.addQuadCurve(to: CGPoint(x: 322, y: 186), controlPoint: CGPoint(x: 336, y: 187))
        path11.addQuadCurve(to: CGPoint(x: 314, y: 170), controlPoint: CGPoint(x: 318, y: 177))
        
        //3
        path11.move(to: CGPoint(x: 327, y: 198))
        path11.addQuadCurve(to: CGPoint(x: 351, y: 206), controlPoint: CGPoint(x: 342, y: 200))
        path11.addQuadCurve(to: CGPoint(x: 390, y: 213), controlPoint: CGPoint(x: 365, y: 213))
        path11.addQuadCurve(to: CGPoint(x: 385, y: 227), controlPoint: CGPoint(x: 379, y: 220))
        path11.addQuadCurve(to: CGPoint(x: 354, y: 223), controlPoint: CGPoint(x: 363, y: 228))
        path11.addQuadCurve(to: CGPoint(x: 331, y: 214), controlPoint: CGPoint(x: 340, y: 215))
        path11.addQuadCurve(to: CGPoint(x: 327, y: 198), controlPoint: CGPoint(x: 328, y: 206))
        
        //4
        path11.move(to: CGPoint(x: 332, y: 229))
        path11.addQuadCurve(to: CGPoint(x: 352, y: 236), controlPoint: CGPoint(x: 343, y: 229))
        path11.addQuadCurve(to: CGPoint(x: 380, y: 242), controlPoint: CGPoint(x: 364, y: 242))
        path11.addQuadCurve(to: CGPoint(x: 390, y: 255), controlPoint: CGPoint(x: 372, y: 249))
        path11.addQuadCurve(to: CGPoint(x: 351, y: 250), controlPoint: CGPoint(x: 360, y: 256))
        path11.addQuadCurve(to: CGPoint(x: 332, y: 242), controlPoint: CGPoint(x: 340, y: 242))
        path11.addQuadCurve(to: CGPoint(x: 332, y: 229), controlPoint: CGPoint(x: 331, y: 234))
        
        //5
        path11.move(to: CGPoint(x: 331, y: 257))
        path11.addQuadCurve(to: CGPoint(x: 347, y: 261), controlPoint: CGPoint(x: 338, y: 257))
        path11.addQuadCurve(to: CGPoint(x: 372, y: 270), controlPoint: CGPoint(x: 355, y: 268))
        path11.addQuadCurve(to: CGPoint(x: 365, y: 281), controlPoint: CGPoint(x: 359, y: 279))
        path11.addQuadCurve(to: CGPoint(x: 345, y: 274), controlPoint: CGPoint(x: 350, y: 279))
        path11.addQuadCurve(to: CGPoint(x: 329, y: 268), controlPoint: CGPoint(x: 336, y: 268))
        path11.addQuadCurve(to: CGPoint(x: 331, y: 257), controlPoint: CGPoint(x: 330, y: 262))
        
        //6
        path11.move(to: CGPoint(x: 325, y: 281))
        path11.addQuadCurve(to: CGPoint(x: 355, y: 295), controlPoint: CGPoint(x: 332, y: 279))
        path11.addQuadCurve(to: CGPoint(x: 348, y: 303), controlPoint: CGPoint(x: 360, y: 299))
        path11.addQuadCurve(to: CGPoint(x: 322, y: 291), controlPoint: CGPoint(x: 328, y: 290))
        path11.addQuadCurve(to: CGPoint(x: 325, y: 281), controlPoint: CGPoint(x: 321, y: 284))
        
        //7
        path11.move(to: CGPoint(x: 317, y: 303))
        path11.addQuadCurve(to: CGPoint(x: 340, y: 314), controlPoint: CGPoint(x: 325, y: 306))
        path11.addQuadCurve(to: CGPoint(x: 332, y: 322), controlPoint: CGPoint(x: 335, y: 319))
        path11.addQuadCurve(to: CGPoint(x: 312, y: 310), controlPoint: CGPoint(x: 318, y: 311))
        path11.addQuadCurve(to: CGPoint(x: 317, y: 303), controlPoint: CGPoint(x: 317, y: 302))
        
        //8
        path11.move(to: CGPoint(x: 305, y: 321))
        path11.addQuadCurve(to: CGPoint(x: 322, y: 332), controlPoint: CGPoint(x: 309, y: 324))
        path11.addQuadCurve(to: CGPoint(x: 318, y: 337), controlPoint: CGPoint(x: 316, y: 336))
        path11.addQuadCurve(to: CGPoint(x: 301, y: 328), controlPoint: CGPoint(x: 303, y: 328))
        path11.addQuadCurve(to: CGPoint(x: 305, y: 321), controlPoint: CGPoint(x: 302, y: 324))
        
        let rightTailLayer = CAShapeLayer()
        rightTailLayer.path = path11.cgPath
        rightTailLayer.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(rightTailLayer)
        
        //利用鏡射做出左邊尾巴
//        let LTailLayer = CAShapeLayer()
//        LTailLayer.path = path11.cgPath
//        let moveDistance = path11.bounds.maxX + path11.bounds.minX - path11.bounds.width - 155
//        LTailLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
//        LTailLayer.fillColor = UIColor.white.cgColor
//        view.layer.addSublayer(LTailLayer)
        
        //左邊尾巴
        let path12 = UIBezierPath()
        //1
        path12.move(to: CGPoint(x: 41, y: 92))
        path12.addQuadCurve(to: CGPoint(x: 63, y: 124), controlPoint: CGPoint(x: 57, y: 107))
        path12.addQuadCurve(to: CGPoint(x: 108, y: 121), controlPoint: CGPoint(x: 84, y: 116))
        path12.addQuadCurve(to: CGPoint(x: 72, y: 159), controlPoint: CGPoint(x: 87, y: 138))
        path12.addQuadCurve(to: CGPoint(x: 37, y: 162), controlPoint: CGPoint(x: 56, y: 155))
        path12.addQuadCurve(to: CGPoint(x: 10, y: 170), controlPoint: CGPoint(x: 19, y: 171))
        path12.addQuadCurve(to: CGPoint(x: 41, y: 92), controlPoint: CGPoint(x: 30, y: 136))

        //2
        path12.move(to: CGPoint(x: 0, y: 184))
        path12.addQuadCurve(to: CGPoint(x: 28, y: 178), controlPoint: CGPoint(x: 15, y: 184))
        path12.addQuadCurve(to: CGPoint(x: 66, y: 170), controlPoint: CGPoint(x: 47, y: 169))
        path12.addQuadCurve(to: CGPoint(x: 58, y: 185), controlPoint: CGPoint(x: 61, y: 178))
        path12.addQuadCurve(to: CGPoint(x: 32, y: 192), controlPoint: CGPoint(x: 45, y: 187))
        path12.addQuadCurve(to: CGPoint(x: 0, y: 201), controlPoint: CGPoint(x: 13, y: 201))
        path12.addQuadCurve(to: CGPoint(x: 0, y: 184), controlPoint: CGPoint(x: 1, y: 191))

        //3
        path12.move(to: CGPoint(x: 2, y: 213))
        path12.addQuadCurve(to: CGPoint(x: 27, y: 207), controlPoint: CGPoint(x: 13, y: 213))
        path12.addQuadCurve(to: CGPoint(x: 53, y: 199), controlPoint: CGPoint(x: 41, y: 200))
        path12.addQuadCurve(to: CGPoint(x: 50, y: 214), controlPoint: CGPoint(x: 52, y: 207))
        path12.addQuadCurve(to: CGPoint(x: 29, y: 221), controlPoint: CGPoint(x: 44, y: 214))
        path12.addQuadCurve(to: CGPoint(x: 4, y: 228), controlPoint: CGPoint(x: 14, y: 229))
        path12.addQuadCurve(to: CGPoint(x: 2, y: 213), controlPoint: CGPoint(x: 0, y: 220))

        //4
        path12.move(to: CGPoint(x: 8, y: 242))
        path12.addQuadCurve(to: CGPoint(x: 25, y: 238), controlPoint: CGPoint(x: 18, y: 241))
        path12.addQuadCurve(to: CGPoint(x: 48, y: 230), controlPoint: CGPoint(x: 39, y: 229))
        path12.addQuadCurve(to: CGPoint(x: 48, y: 242), controlPoint: CGPoint(x: 48, y: 235))
        path12.addQuadCurve(to: CGPoint(x: 33, y: 246), controlPoint: CGPoint(x: 43, y: 242))
        path12.addQuadCurve(to: CGPoint(x: 12, y: 255), controlPoint: CGPoint(x: 21, y: 255))
        path12.addQuadCurve(to: CGPoint(x: 8, y: 242), controlPoint: CGPoint(x: 10, y: 248))

        //5
        path12.move(to: CGPoint(x: 19, y: 270))
        path12.addQuadCurve(to: CGPoint(x: 32, y: 262), controlPoint: CGPoint(x: 25, y: 268))
        path12.addQuadCurve(to: CGPoint(x: 49, y: 258), controlPoint: CGPoint(x: 42, y: 258))
        path12.addQuadCurve(to: CGPoint(x: 51, y: 268), controlPoint: CGPoint(x: 50, y: 262))
        path12.addQuadCurve(to: CGPoint(x: 39, y: 272), controlPoint: CGPoint(x: 44, y: 269))
        path12.addQuadCurve(to: CGPoint(x: 24, y: 281), controlPoint: CGPoint(x: 30, y: 279))
        path12.addQuadCurve(to: CGPoint(x: 18, y: 270), controlPoint: CGPoint(x: 21, y: 275))

        //6
        path12.move(to: CGPoint(x: 32, y: 294))
        path12.addQuadCurve(to: CGPoint(x: 55, y: 281), controlPoint: CGPoint(x: 49, y: 282))
        path12.addQuadCurve(to: CGPoint(x: 58, y: 290), controlPoint: CGPoint(x: 56, y: 285))
        path12.addQuadCurve(to: CGPoint(x: 38, y: 304), controlPoint: CGPoint(x: 52, y: 292))
        path12.addQuadCurve(to: CGPoint(x: 32, y: 294), controlPoint: CGPoint(x: 34, y: 298))

        //7
        path12.move(to: CGPoint(x: 48, y: 315))
        path12.addQuadCurve(to: CGPoint(x: 63, y: 302), controlPoint: CGPoint(x: 58, y: 304))
        path12.addQuadCurve(to: CGPoint(x: 68, y: 309), controlPoint: CGPoint(x: 65, y: 306))
        path12.addQuadCurve(to: CGPoint(x: 54, y: 322), controlPoint: CGPoint(x: 64, y: 311))
        path12.addQuadCurve(to: CGPoint(x: 48, y: 315), controlPoint: CGPoint(x: 49, y: 318))

        //8
        path12.move(to: CGPoint(x: 64, y: 332))
        path12.addQuadCurve(to: CGPoint(x: 75, y: 321), controlPoint: CGPoint(x: 71, y: 324))
        path12.addQuadCurve(to: CGPoint(x: 80, y: 327), controlPoint: CGPoint(x: 78, y: 325))
        path12.addQuadCurve(to: CGPoint(x: 71, y: 338), controlPoint: CGPoint(x: 77, y: 331))
        path12.addQuadCurve(to: CGPoint(x: 64, y: 332), controlPoint: CGPoint(x: 67, y: 334))


        let leftTailLayer = CAShapeLayer()
        leftTailLayer.path = path12.cgPath
        leftTailLayer.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(leftTailLayer)
        
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
