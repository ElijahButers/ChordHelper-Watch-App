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

import UIKit

class ChordDetailController: UIViewController {

  @IBOutlet weak var e2Label: CircleLabel!
  @IBOutlet weak var bLabel: CircleLabel!
  @IBOutlet weak var gLabel: CircleLabel!
  @IBOutlet weak var dLabel: CircleLabel!
  @IBOutlet weak var aLabel: CircleLabel!
  @IBOutlet weak var eLabel: CircleLabel!

  @IBOutlet weak var e2Constraint: NSLayoutConstraint!
  @IBOutlet weak var bConstraint: NSLayoutConstraint!
  @IBOutlet weak var gConstraint: NSLayoutConstraint!
  @IBOutlet weak var dConstraint: NSLayoutConstraint!
  @IBOutlet weak var aConstraint: NSLayoutConstraint!
  @IBOutlet weak var eConstraint: NSLayoutConstraint!

  lazy var strings: [(label: UILabel, constraint: NSLayoutConstraint)] = {
    return [
      (self.eLabel, self.eConstraint),
      (self.aLabel, self.aConstraint),
      (self.dLabel, self.dConstraint),
      (self.gLabel, self.gConstraint),
      (self.bLabel, self.bConstraint),
      (self.e2Label, self.e2Constraint)
    ]
  }()

  func fretOffset(frets: Int) -> CGFloat {
    var width = CGRectGetWidth(view.bounds)
    width -= 60 // padding and string label
    let minFrets = frets > 6 ? frets : 6
    return width / CGFloat(minFrets)
  }

  var chord: Chord?

  override func viewDidLoad() {
    super.viewDidLoad()
    title = chord?.name

    if let chord = chord {
      let min = chord.minimumFret
      let max = chord.maximumFret
      let spread = max - min
      let offset = fretOffset(spread)

      for (i, fret) in chord.frets.enumerate() {
        let string = strings[i]
        if fret == -1 {
          string.label.hidden = true
        } else {
          string.label.text = "\(fret)"
          string.constraint.constant = CGFloat(fret) * offset
        }
      }
    }
  }

}
