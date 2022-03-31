//
//  SwitchingViewsWithEnums.swift
//  BucketList
//
//  Created by Andres camilo Raigoza misas on 29/03/22.
//

import SwiftUI

enum LoadingState2 {
    case loading, success, failed
}

struct LoadingView: View {
    var body: some View {
        Text("Loading...")
    }
}

struct SuccessView: View {
    var body: some View {
        Text("Success!")
    }
}

struct FailedView: View {
    var body: some View {
        Text("Failed.")
    }
}

struct SwitchingViewsWithEnums: View {
    var loadingState = LoadingState2.loading
    
    var body: some View {
        switch loadingState {
        case .loading:
            LoadingView()
        case .success:
            SuccessView()
        case .failed:
            FailedView()
        }
    }
}

struct SwitchingViewsWithEnums_Previews: PreviewProvider {
    static var previews: some View {
        SwitchingViewsWithEnums()
    }
}
