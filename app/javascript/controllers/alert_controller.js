import { Controller } from "@hotwired/stimulus";
import Swal from 'https://cdn.jsdelivr.net/npm/sweetalert2@8/src/sweetalert2.js'

// Connects to data-controller="alert"
export default class extends Controller {

  static targets = ["firstName", "lastName", "phoneNumber", "form"];

  showAlert(event) {
    event.preventDefault();
    let book = event.currentTarget.children[0];
    let name = book.dataset.clientLastName;
    let ccr = book.dataset.ccrAcceptance;
    Swal.fire({
      title: `⚠️Warning⚠️
        Crazy Client!!!`,
      text: `Mr ${name} is bellow your ${ccr} CCR acceptance rate`,
      width: "48em",
      padding: "12em",
      color: "#fffff",
      background: "#fff url(https://answerfirst.com/wp-content/uploads/2016/07/how-to-speak-to-angry-customers.jpg)",
      backdrop: `
        rgba(0,0,123,0.4)
        url(https://media.tenor.com/-AyTtMgs2mMAAAAi/nyan-cat-nyan.gif)
        left top
        no-repeat
      `
    }).then((result) => {
      if (result.value) {
         let clientId = book.dataset.clientId;
         // Construct the path for the new booking
         let bookingPath = `/clients/${clientId}/bookings/new`;
         // Redirect to the new booking path
         window.location.href = bookingPath;
      }
    });

  };

  confirmAlert(event) {
    event.preventDefault();
    let firstName = this.firstNameTarget.value;
    let lastName = this.lastNameTarget.value;
    let phoneNumber = this.phoneNumberTarget.value;
    Swal.fire({
      title: "Are you sure you want to create this client?",
      text: `First Name: ${firstName}
        Last Name: ${lastName}
        Phone Number: ${phoneNumber}`,
      background: "#4361EE",
      showDenyButton: true,
      showCancelButton: true,
      confirmButtonText: "Create",
      denyButtonText: "Go Back"

    }).then((result) => {
      /* Read more about isConfirmed, isDenied below */
      if (result.value) {
        const url = `${window.location.origin}/clients`

        fetch(url, {
          method: "POST",
          headers: { "Accept": "text/plain"},
          body: new FormData(this.formTarget)
        }).then(response => response.text())
        .then(data => {
          Swal.fire("Client created!", "", "success");
          this.formTarget.outerHTML = data
        })
      } else {
        Swal.fire("Client not created", "", "info");
      }
    });
  }

}
