import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="countdown"
export default class extends Controller {
  static targets = ["clock"]

  static values = {
    time: String,
  }

  connect() {
    this.startCountdown()
  }

  startCountdown() {
    this.updateTimer()
    this.interval = setInterval(() => {
      this.updateTimer()
    }, 1000)
  }

  updateTimer() {
    const now = new Date();
    const timeDeadline = new Date(this.timeValue);

    const timeRemaining = timeDeadline - now;

    if (timeRemaining <= 0) {
      clearInterval(this.interval)
      this.clockTarget.innerHTML = "Review period has ended."
    } else {
      const days = Math.floor(timeRemaining / (1000 * 60 * 60 * 24));
      const hours = Math.floor((timeRemaining % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60))
      const minutes = Math.floor((timeRemaining % (1000 * 60 * 60)) / (1000 * 60))
      const seconds = Math.floor((timeRemaining % (1000 * 60)) / 1000)

      this.clockTarget.innerHTML = `${days}d ${hours}h ${minutes}m`
    }
  }
}
