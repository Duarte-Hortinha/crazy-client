import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["attendance", "punctuality"]

  connect() {
    this.togglePunctuality()
  }

  togglePunctuality() {
    if (this.attendanceTarget.checked) {
      this.punctualityTarget.parentElement.style.display = 'block'
    } else {
      this.punctualityTarget.parentElement.style.display = 'none'
    }
  }

  change() {
    this.togglePunctuality()
  }
}

