//
//  ContentView.swift
//  japanese2
//
//  Created by chenzhizs on 2021/04/27.
//

import SwiftUI
import AVFoundation


var player: AVAudioPlayer?
func tapBtn(_ soundName: String) {
    if let sound = NSDataAsset(name: soundName) {
        player = try? AVAudioPlayer(data: sound.data)
        player?.play() // → これで音が鳴る
    }
}

struct ContentView: View {
    let fruits = ["りんご", "オレンジ", "バナナ"]
    let sound1 = ["CD01",
                  "CD03",
                  "CD04",
                  "CD05",
                  "CD07",
                  "CD08",
                  "CD09",
                  "CD10",
                  "CD12",
                  "CD13",
                  "CD14",
                  "CD16",
                  "CD17",
                  "CD18",
                  "CD20",
                  "CD21",
                  "CD22",
                  "CD23",
                  "CD25",
                  "CD26",
                  "CD27",
                  "CD29",
                  "CD30",
                  "CD31",
                  "CD33",
                  "CD34",
                  "CD35",
                  "CD37",
                  "CD38",
                  "CD39",
                  "CD41",
                  "CD42",
                  "CD43",
                  "CD44",
                  "CD46",
                  "CD47",
                  "CD48",
                  "CD49",
                  "CD51",
                  "CD52",
                  "CD53",]
    
    let sound2 = ["CD01-02",
                  "CD01-03",
                  "CD01-05",
                  "CD01-06",
                  "CD01-08",
                  "CD01-09",
                  "CD01-11",
                  "CD01-12",
                  "CD01-13",
                  "CD01-15",
                  "CD01-16",
                  "CD01-18",
                  "CD01-19",
                  "CD01-21",
                  "CD01-22",
                  "CD01-23",
                  "CD02-02",
                  "CD02-03",
                  "CD02-05",
                  "CD02-06",
                  "CD02-08",
                  "CD02-09",
                  "CD02-10",
                  "CD02-12",
                  "CD02-13",
                  "CD02-15",
                  "CD02-16",]
    
    var body: some View {
        List {
            Button(
                action:{
                    player?.play()
                },label:{
                    
                    Text("播放")
                }
            )
            Button(
                action:{
                    player?.stop()
                },label:{
                    
                    Text("暂停")
                }
            )
            Section(header: Text("上册")){
                ForEach(0 ..< sound1.count) { index in
                    
                    Button(
                        action:{
                            tapBtn(sound1[index])
                        },label:{
                            
                                Text(sound1[index])
                        }
                    )
                }
            }
            Section(header: Text("下册")) {
                ForEach(0 ..< sound2.count) { index in
                    
                    Button(
                        action:{
                            tapBtn(sound2[index])
                        },label:{
                            
                                Text(sound2[index])
                        }
                    )
                }
            }
        }
        .listStyle(SidebarListStyle())
    }
}
 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
