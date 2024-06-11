import { Controller } from "@hotwired/stimulus";
import Swal from 'https://cdn.jsdelivr.net/npm/sweetalert2@8/src/sweetalert2.js'

// Connects to data-controller="alert"
export default class extends Controller {

  // static targets = ["seeDetailsCrazyClientButton"]

  connect() {
    // this.seeDetailsCrazyClientButtonTarget.addEventListener('click', this.showAlert);
    console.log("AlertController connected");
    //this.element.addEventListener('click', this.showAlert.bind(this));
  }

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
    Swal.fire({
      title: "Are you sure you want to create the following client?",
      text: "The client inputed information should come here",
      showDenyButton: true,
      showCancelButton: true,
      confirmButtonText: "Create",
      denyButtonText: `Go Back`

    }).then((result) => {
      /* Read more about isConfirmed, isDenied below */
      if (result.isConfirmed) {
        Swal.fire("Client created!", "", "success");
      } else if (result.isDenied) {
        Swal.fire("Client not created", "", "info");
      }
    });
  }

}
