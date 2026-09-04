//
//  HabitTracker.swift
//  SwiftBootcamp
//
//  Created by Dev Internee 1 on 04/09/2026.
//

import SwiftUI

struct Habit: Identifiable {
    var id: Int
    var name: String
    var emoji: String
    var count: Int
}

struct HabitTracker: View {
    
    @State var habits: [Habit] = [
        Habit(id: 1, name: "Drink Water", emoji: "drop.fill", count: 0),
        Habit(id: 2, name: "Exercise", emoji: "figure.run", count: 0),
        Habit(id: 3, name: "Read", emoji: "book.fill", count: 0),
        Habit(id: 4, name: "Meditate", emoji: "brain.head.profile", count: 0),
        Habit(id: 5, name: "Sleep Early", emoji: "moon.fill", count: 0),
        Habit(id: 6, name: "Wake Up Early", emoji: "sunrise.fill", count: 0),
        Habit(id: 7, name: "Walk", emoji: "figure.walk", count: 0),
        Habit(id: 8, name: "Stretch", emoji: "figure.flexibility", count: 0),
        Habit(id: 9, name: "Journal", emoji: "book.closed.fill", count: 0),
        Habit(id: 10, name: "Study", emoji: "graduationcap.fill", count: 0),
        Habit(id: 11, name: "Code", emoji: "chevron.left.forwardslash.chevron.right", count: 0),
        Habit(id: 12, name: "Learn Swift", emoji: "swift", count: 0),
        Habit(id: 13, name: "Eat Healthy", emoji: "fork.knife", count: 0),
        Habit(id: 14, name: "Eat Fruits", emoji: "apple.logo", count: 0),
        Habit(id: 15, name: "No Junk Food", emoji: "xmark.circle.fill", count: 0),
        Habit(id: 16, name: "Brush Teeth", emoji: "mouth.fill", count: 0),
        Habit(id: 17, name: "Skincare", emoji: "sparkles", count: 0),
        Habit(id: 18, name: "Go Outside", emoji: "sun.max.fill", count: 0),
        Habit(id: 19, name: "Call a Friend", emoji: "phone.fill", count: 0),
        Habit(id: 20, name: "Listen to Music", emoji: "music.note", count: 0),
        Habit(id: 21, name: "Draw", emoji: "paintbrush.fill", count: 0),
        Habit(id: 22, name: "Clean Room", emoji: "sparkles.rectangle.stack.fill", count: 0),
        Habit(id: 23, name: "Make Bed", emoji: "bed.double.fill", count: 0),
        Habit(id: 24, name: "Cook", emoji: "frying.pan.fill", count: 0),
        Habit(id: 25, name: "Plan Day", emoji: "calendar", count: 0),
        Habit(id: 26, name: "Write Goals", emoji: "target", count: 0),
        Habit(id: 27, name: "Save Money", emoji: "dollarsign.circle.fill", count: 0),
        Habit(id: 28, name: "Track Expenses", emoji: "chart.bar.fill", count: 0),
        Habit(id: 29, name: "Focus", emoji: "scope", count: 0),
        Habit(id: 30, name: "Take Breaks", emoji: "pause.circle.fill", count: 0),
        Habit(id: 31, name: "Go to Gym", emoji: "dumbbell.fill", count: 0),
        Habit(id: 32, name: "Cycle", emoji: "bicycle", count: 0),
        Habit(id: 33, name: "Swim", emoji: "figure.pool.swim", count: 0),
        Habit(id: 34, name: "Run", emoji: "figure.run", count: 0),
        Habit(id: 35, name: "Play Sports", emoji: "sportscourt.fill", count: 0),
        Habit(id: 36, name: "Practice Gratitude", emoji: "heart.fill", count: 0),
        Habit(id: 37, name: "Deep Breathing", emoji: "wind", count: 0),
        Habit(id: 38, name: "Be Positive", emoji: "face.smiling.fill", count: 0),
        Habit(id: 39, name: "Limit Screen Time", emoji: "iphone.slash", count: 0),
        Habit(id: 40, name: "Digital Detox", emoji: "iphone.gen3", count: 0)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack (alignment: .leading, spacing: 15) {
                    Text("\(calculatehabitcount()) Habits completed today")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    ForEach($habits) { $habit in
                        HabitRow(name: habit.name, emoji: habit.emoji, count: $habit.count)
                    }
                }.padding()
            }
            .navigationTitle("Habit Tracker")
            .toolbar {
                Button(action: {
                    withAnimation(.spring) {
                        reset()
                    }
                }, label: {
                    Text("Reset All")
                })
            }
        }
    }
    
    func calculatehabitcount() -> Int {
        var total: Int = 0
        for habit in habits {
            if habit.count > 0 {
                total += 1
            }
        }
        return total
    }
    
    func reset() {
        for index in habits.indices {
            habits[index].count = 0
        }
    }
}



#Preview {
    HabitTracker()
}

struct HabitRow: View {
    
    let name: String
    let emoji: String
    @Binding var count: Int
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: emoji)
                .foregroundStyle(.blue)
            Text(name)
                .font(.body)
            if count >= 5 {
                Image(systemName: "flame.fill")
                    .foregroundStyle(.orange)
            }
            Spacer()
            Button(action: {
                if count > 0 { count -= 1 }
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 30,height: 30)
                    .shadow(radius: 2)
                    .overlay(content: {
                        Image(systemName: "minus.circle.fill")
                            .font(.title)
                            .foregroundStyle(.red)
                    })
            })
            Text("\(count)")
                .monospacedDigit()
                .foregroundStyle(.secondary)
            Button(action: {
                count += 1
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 30,height: 30)
                    .shadow(radius: 2)
                    .overlay(content: {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .foregroundStyle(.green)
                    })
            })
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
    }
}
