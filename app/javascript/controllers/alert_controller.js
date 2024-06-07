import { Controller } from "@hotwired/stimulus";
import Swal from 'sweetalert2';

// Connects to data-controller="alert"
export default class extends Controller {

  // static targets = ["seeDetailsCrazyClientButton"]

  connect() {
    // this.seeDetailsCrazyClientButtonTarget.addEventListener('click', this.showAlert);
    this.element.addEventListener('click', this.showAlert.bind(this));
  }

  showAlert(event) {
    event.preventDefault();  // Won't this not redirect ? ... problem corrected bellow
    Swal.fire({
      title: "Warning: This client is bat-shmidt-crazy!!!",
      width: 600,
      padding: "3em",
      color: "#716add",
      background: "#fff url(https://sweetalert2.github.io/#examplesimages/trees.png)",
      backdrop: `
        rgba(0,0,123,0.4)
        url("https://sweetalert2.github.io/#examplesimages/nyan-cat.gif")
        left top
        no-repeat
      `
    }).then((result) => {
      if (result.isConfirmed) {
        window.location = this.element.href; // Navigate to the link if confirmed
      }
    });

  }
}
