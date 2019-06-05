//
//  LandmarkList.swift
//  Landmarks
//
//  Created by XN on 2019/6/5.
//  Copyright © 2019 pc. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationButton(destination: LandMarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                 }
                }
                .navigationBarTitle(Text("Landmarks"), displayMode: .inline)
        }
        
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif
