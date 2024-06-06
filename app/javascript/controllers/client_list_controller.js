import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="client-list"
export default class extends Controller {
  static targets = [ "form", "first", "last", "phone"]
  connect() {
    this.firstTarget.addEventListener('keyup', this.search.bind(this))
    this.lastTarget.addEventListener('keyup', this.search.bind(this))
    this.phoneTarget.addEventListener('keyup', this.search.bind(this))
  }

  submitForm() {
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      this.formTarget.requestSubmit()
    }, 300) // Adjust the delay as needed
  }
}
