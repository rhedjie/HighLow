//
//  ContentView.swift
//  HighLow
//
//  Created by Rhedjie Cruz on 3/28/21.
//

import SwiftUI

struct ContentView: View {
    @State var player = "card6"
    @State var cpu = "card2"
    @State var score = 0
    @State var life = 3
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea(.all
            )
           
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Current Card")
                            .font(.title2)
                            .foregroundColor(Color.white)
                        Image(player)
                    }
                    Spacer()
                    VStack{
                        Text("Next Card")
                            .font(.title2)
                            .foregroundColor(Color.white)
                        Image(cpu)
                    }
                    Spacer()
                }
                Spacer()
                HStack{
                    Spacer()
                    Button(action: {
                        let playerRnd = Int.random(in: 1...13)
                        let cpuRnd = Int.random(in: 1...13)
                        
                        player = "card" + String(playerRnd)
                        cpu = "card" + String(cpuRnd)
                        
                        if playerRnd>cpuRnd {
                            score += 1
                        }else if cpuRnd>playerRnd{
                            life -= 1
                        }
                        if life == 0{
                            print("You Lose!")
                            score = 0
                            life = 3
                        }
                    },label:{
                        Text("HIGH").foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/).frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/).cornerRadius(20)
                    })
                    Spacer()
                    Button(action: {
                        let playerRnd = Int.random(in: 1...13)
                        let cpuRnd = Int.random(in: 1...13)
                        
                        player = "card" + String(playerRnd)
                        cpu = "card" + String(cpuRnd)
                        
                        if playerRnd<cpuRnd {
                            score += 1
                        }else if cpuRnd<playerRnd{
                            life -= 1
                        }
                        
                        if life == 0{
                            print("You Lose!")
                            score = 0
                            life = 3
                        }
                    },label:{
                        Text("Low").foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/).frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/).cornerRadius(20)
                    })
                    Spacer()
                }
                Spacer()
                HStack{
                    Spacer()
                    //This shows the score of the player
                    VStack{
                        Text("Score").font(.headline).foregroundColor(.white)
                        Text(String(score)).font(.largeTitle).foregroundColor(.white)
                    }
                    Spacer()
                    //This Shows the life counts of the player
                    VStack{
                        Text("Life").font(.headline).foregroundColor(.white)
                        Text(String(life)).font(.largeTitle).foregroundColor(.white)
                    }
                    Spacer()
                }
                
                
                Spacer()
            }
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
