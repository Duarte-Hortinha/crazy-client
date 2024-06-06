import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="client-list"
export default class extends Controller {
  static targets = [ "form", "first", "last", "phone", "list" ]
  connect() {
    console.log(this.firstTarget)
  }

  update() {
    const url = `${this.formTarget.action}?first=${this.firstTarget.value}&last=${this.lastTarget.value}&phone=${this.phoneTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
      })
  }
}
