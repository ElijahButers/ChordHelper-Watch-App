/*
* Copyright (c) 2015 Razeware LLC
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/

import Foundation

class Chord {
  
  let name: String
  let frets: [Int]

  init(name: String, frets: [Int]) {
    self.name = name
    self.frets = frets
  }

  var minimumFret: Int {
    return frets.reduce(0, combine: { min, fret in
      fret < min && fret != -1 ? fret : min
    })
  }

  var maximumFret: Int {
    return frets.reduce(0, combine: { max, fret in
      fret > max && fret != -1 ? fret : max
    })
  }

  static let standardChords: [Chord] = [
    Chord(name: "C", frets: [-1, 3, 2, 0, 1, 0]),
    Chord(name: "A", frets: [-1, 0, 2, 2, 2, 0]),
    Chord(name: "G", frets: [3, 2, 0, 0, 0, 3]),
    Chord(name: "E", frets: [0, 2, 2, 1, 0, 0]),
    Chord(name: "D", frets: [-1, -1, 0, 2, 3, 2]),
    Chord(name: "Am", frets: [-1, 0, 2, 2, 1, 0]),
    Chord(name: "Em", frets: [0, 2, 2, 0, 0, 0]),
    Chord(name: "Dm", frets: [-1, -1, 0, 2, 3, 1]),
    Chord(name: "A7", frets: [-1, 0, 2, 0, 2, 0]),
    Chord(name: "E7", frets: [0, 2, 0, 1, 0, 0]),
    Chord(name: "Cmaj7", frets: [-1, 3, 2, 0, 0, 0]),
    Chord(name: "Dm7", frets: [-1, -1, 0, 2, 1, 1]),
    Chord(name: "Fmaj7", frets: [-1, -1, 3, 2, 1, 0]),
  ]
}