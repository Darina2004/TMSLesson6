//
//  ViewController.swift
//  TMSLesson6
//
//  Created by Mac on 6.12.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ДЗ: Функция вычисления факториала числа - через передачу массива в параметр функции. Массив из 6 чисел -> Факториал числа \(numbers), равен ????
        
        
        func factorial(_ numbers: [Int]) -> [Int] {
            var results: [Int] = []
            
            for number in numbers {
                var result = 1
                for i in 1...number {
                    result *= i
                }
                results.append(result)
            }
            
            return results
        }
        
        let numbers = [3, 4, 5, 7, 9, 11]
        let results = factorial(numbers)
        print("Факториалы чисел \(numbers) равны \(results)")
        
        
        
        func factorial2(_ num: [Int]) {
            for number in num {
                var result = 1
                for i in 1...number {
                    result *= i
                }
                print("Факториал \(number) равен \(result)")
            }
        }
        let num = [1, 2, 3, 4, 5, 6]
        factorial2(num)
        
        
        
        func factorial3(_ nums: [Int]) {
            nums.forEach { number in
                var result = 1
                for i in 1...number {
                    result *= i
                    
                }
                print ("факториал \(number) равен \(result)")
            }
        }
        
        let nums = [1, 2, 3, 5, 8, 10]
        factorial3(nums)
        
        
        
        func factorial4 (_ value: [Int]) -> [Int] {
            value.map { number -> Int in
                var result = 1
                for i in 1...number {
                    result *= i
                }
                return result
            }
        }
        let value = [1, 2, 3, 4, 5, 6]
        let factorials = factorial4(value)
        
        for (index, factorial) in factorials.enumerated() {
            print("Факториал числа \(value[index]) равен \(factorial)")
        }
        
        
        
        //var x = [(1, "x"), (4, "y"), (6, «a»), (9, «u»), (5, «k»)]
        //Массив из кортежей - возвести Int в квадрат
        
        var x = [(1, "x"), (4, "y"), (6, "a"), (9, "u"), (5, "k")]
        
   
        let squaredInt = x.map{$0.0 * $0.0}
        print(squaredInt)
        
        
        //отфильтровать только четные Int -> [4, 6]
        let int = x.map {$0.0}
        let evenInt = int.filter {$0 % 2 == 0}
        print(evenInt)
        
        
        //упорядочить по строкам по возрастанию -> [a, k, u, x, y]
        
        let string = x.map {$0.1}
        let stringComparison = string.sorted()
        print(stringComparison)
        
        
        //********************
        // написать список книг и отфильтровать книги по жанрам -> horror = []
        //var books = ["Book001": ["title": "Swift Programming", "author": "John Doe", "genre": "Programming"]]
        
        var books = [
            "Book001": ["title": "Swift Programming", "author": "John Doe", "genre": "Programming"],
            "Book002": ["title": "Swift Programming", "author": "John Doe", "genre": "Adventure"],
            "Book003": ["title": "Swift Programming", "author": "John Doe", "genre": "Romance"],
            "Book004": ["title": "Swift Programming", "author": "John Doe", "genre": "Triller"],
            "Book005": ["title": "Swift Programming", "author": "John Doe", "genre": "Horror"]
        ]
        
        var horrorBook = books.values.filter { $0["genre"] == "Horror" }
        print("horror = \(horrorBook)")
        var romanceBook = books.values.filter { $0["genre"] == "Romance" }
        print("romance = \(romanceBook)")
        var programmingBook = books.values.filter { $0["genre"] == "Programming" }
        print("programming = \(programmingBook)")
        var trillerBook = books.values.filter { $0["genre"] == "Triller" }
        print("triller = \(trillerBook)")
        var adventureBook = books.values.filter { $0["genre"] == "Adventure" }
        print("adventure = \(adventureBook)")
        
        
        
        func filterBooksByGenre(genre: String) -> [String] {
            var filteredBooks: [String] = []
            for (key, value) in books {
                if let bookGenre = value["genre"], bookGenre == genre {
                    filteredBooks.append(key)
                }
            }
            return filteredBooks
        }
        
        let programmingBooks = filterBooksByGenre(genre: "Programming")
        let horrorBooks = filterBooksByGenre(genre: "Horror")
        let trillerBooks = filterBooksByGenre(genre: "Triller")
        let romanceBooks = filterBooksByGenre(genre: "Romance")
        let adventureBooks = filterBooksByGenre(genre: "Adventure")
        
        print("programing = \(programmingBooks)")
        print("horror = \(horrorBooks)")
        print("triller = \(trillerBooks)")
        print("romance = \(romanceBooks)")
        print("adventure = \(adventureBooks)")
       
        
        
        // Объеденить 2 массива. первый массив это название групп. второй название песен
        
        let bands = ["The Beatles", "Queen", "Thirty Seconds to Mars"]
        let songs = ["Hey Jude", "Bohemian Rhapsody", "A Beautiful Lie"]
        
        var combined: [[String: String]] = []
        
        var index = 0
        while index < bands.count && index < songs.count {
            let band = bands[index]
            let song = songs[index]
            
            let dictionary: [String: String] = ["band": band, "song": song]
            combined.append(dictionary)
            index += 1
        }
        print(combined)
        
        
        //[2, nil, 4, nil, 3, 8, nil] - не использую compactMap
        //Создать функцию которая принимает массив чисел и умножает каждое число на 2 используя функцию map.
        
        
        var array: [Int?] = [2, nil, 4, nil, 3, 8, nil]
        let newArray = array.map{$0.map{$0 * 2}}
        func printArray<T>(_ array: [T]) {
            for element in array {
                print(element)
            }
        }
        
        print(printArray(newArray))
        
        
        
        func multiplyNumbers(array: [Int?]) -> [Int] {
            let multiply = array.map { number in
                if let value = number {
                    return value * 2
                }else {
                    return 0
                }
            }
         return multiply
        }
        let result = multiplyNumbers(array: array)
        print(result)
    }
    
}
