//
//  SwiftUIView.swift
//  swift-utils
//
//  Created by Reuben on 22/12/2024.
//

import SwiftUI

struct MinZeroSpacer: View {
    var body: some View {
        Spacer(minLength: 0.0)
    }
}

#Preview {
    MinZeroSpacer()
}
