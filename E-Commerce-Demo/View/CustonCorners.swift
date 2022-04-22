//
//  CustonCorners.swift
//  E-Commerce-Demo
//
//  Created by Tal talspektor on 15/04/2022.
//

import SwiftUI

struct CustonCorners: Shape {

    var corners: UIRectCorner
    var radius: CGFloat

    func path(in rect: CGRect) -> Path {

        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))

        return Path(path.cgPath)
    }
}
