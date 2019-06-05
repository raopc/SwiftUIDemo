//
//  LandMarkDetail.swift
//  Landmarks
//
//  Created by XN on 2019/6/5.
//  Copyright © 2019 pc. All rights reserved.
//

import SwiftUI

struct LandMarkDetail : View {
    var landmark : Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)
            CircleImage(image: landmark.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                }
                .padding()
            Spacer()
        }
    }
}

#if DEBUG
struct LandMarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandMarkDetail(landmark: landmarkData[0])
    }
}
#endif
