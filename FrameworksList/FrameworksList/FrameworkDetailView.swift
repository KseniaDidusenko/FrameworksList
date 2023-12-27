//
//  FrameworkDetailView.swift
//  FrameworksList
//
//  Created by Ksenia on 30.11.2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
