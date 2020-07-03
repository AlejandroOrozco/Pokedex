//
//  ExtraShapes.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 27/06/20.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}


struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

//public struct TabSegmentedPickerStyle: PickerStyle {
//    public static func _makeView<SelectionValue>(value: _GraphValue<_PickerValue<TabSegmentedPickerStyle, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable {
//    }
//
//    public static func _makeViewList<SelectionValue>(value: _GraphValue<_PickerValue<TabSegmentedPickerStyle, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable {
//    }
//}
