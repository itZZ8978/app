//
//  alarm.swift
//  component
//
//  Created by 잇쬬 on 5/18/25.
//

import SwiftUI

struct Alarm: View {
    @State private var esActive = false
    @State private var IsActive = false
    let title: String
    let action: () -> Void
    var body: some View {
        NavigationStack {
            Spacer()
            Text("받은 알림 없음")
                .font(.title)
                .navigationBarTitle("알림")
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Image(systemName: "house.fill")
                    Button("홈") {
                        esActive = true
                    }
                    .navigationDestination(isPresented: $esActive) {
                        ContentView(title: "클릭") {
                            print("아직 개발 중")
                        }
                    }
                }
                Spacer()
                VStack {
                    Button {
                        action()
                    } label: {
                        VStack {
                            Image(systemName: "bell.fill")
                            Text("알림")
                        }
                    }
                }
                Spacer()
                VStack {
                    Image(systemName: "ellipsis.circle.fill")
                    Button("더보기") {
                        IsActive = true
                    }
                    .navigationDestination(isPresented: $IsActive) {
                        Buteun(title: "클릭") {
                            print("아직 개발 중")
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .background(Color(.systemGray6))
        }
    }
}

#Preview {
    Alarm(title: "클릭") {
        print("아직 개발 중")
    }
}
