//
//  buteun.swift
//  component
//
//  Created by 잇쬬 on 5/18/25.
//

import SwiftUI

struct BCV: View {
    let stim: String
    let label: String
    let action: () -> Void
    var body: some View {
        VStack {
            Image(systemName: stim)
                .font(.title2)
            Button(action: action) {
                Text(label)
            }
        }
    }
}

struct Buteun: View {
    @State private var esActive = false
    @State private var isActive = false
    let title: String
    let action: () -> Void
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text("더보기 기능 없음")
                    .font(.title)
                    .navigationBarTitle("더보기")
                Spacer()
                HStack {
                    Spacer()
                    BCV(stim: "house.fill", label: "홈") {
                        esActive = true
                    }
                    .navigationDestination(isPresented: $esActive) {
                        ContentView(title: "클릭") {
                            print("아직 개발 중")
                        }
                    }
                    Spacer()
                    BCV(stim: "bell.fill", label: "알림") {
                        isActive = true
                    }
                    .navigationDestination(isPresented: $isActive) {
                        Alarm(title: "클릭") {
                            print("아직 개발 중")
                        }
                    }
                    Spacer()
                    BCV(stim: "ellipsis.circle.fill", label: "더보기") {
                        action()
                    }
                    Spacer()
                }
                .padding()
                .background(Color(.systemGray6))
            }
        }
    }
}

#Preview {
    Buteun(title: "클릭") {
        print("아직 개발 중")
    }
}
