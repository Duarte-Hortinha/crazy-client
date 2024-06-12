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
      html: `<p>Mr <strong> ${name} </strong>is bellow your <em>${ccr}</em> CCR acceptance rate</p>`,
      width: "42em",
      padding: "8em",
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
      html: `<p><strong>First Name:</strong> ${firstName}</p>
         <p><strong>Last Name:</strong> ${lastName}</p>
         <p><strong>Phone Number:</strong> ${phoneNumber}</p>`,
      // text: `First Name: ${firstName}
      //   Last Name: ${lastName}
      //   Phone Number: ${phoneNumber}`,
      background: "#4361EE",
      // showDenyButton: true,
      showCancelButton: true,
      confirmButtonText: "Create", // confirm button always here
      // denyButtonText: "Go Back",
      cancelButtonText: "Go Back"

    }).then(async (result) => {
      /* Read more about isConfirmed, isDenied below */
      if (result.value) {
        const url = `${window.location.origin}/clients`

        try {
          const result = await fetch(url, {
            method: "POST",
            headers: { "Accept": "text/plain"},
            body: new FormData(this.formTarget)
          });

          if (result.status === 422) {
            Swal.fire({   // I click on the create but there is error on the inputs
              title: "Error: Client not created...",
              background: "#4361EE",
              showDenyButton: false,
              showCancelButton: false,
              confirmButtonText: "Go Back",
            })
          } else {
            const data = await result.text();

            // Swal.fire("Client created!", "", "success");
            Swal.fire({
              title: "Success: Client created!",
              background: "#4361EE",
              showDenyButton: false,
              showCancelButton: false,
              confirmButtonText: "OK",
              // denyButtonText: "Go Back"
            });
            this.formTarget.outerHTML = data;
          }

        } catch (e) {
          console.log(e.message)

          console.error(e)
          Swal.fire({   // I click on the create but there is error on the inputs
            title: "Error: Client not created...",
            background: "#4361EE",
            showDenyButton: false,
            showCancelButton: false,
            confirmButtonText: "Go Back",
            // denyButtonText: "Go Back"
          })
        }
      } else {
        Swal.fire({
          title: "Client creation canceled!",
          background: "#4361EE",
          showDenyButton: false,
          showCancelButton: false,
          confirmButtonText: "Go Back",
          // denyButtonText: "Go Back"
        })
      }
    });
  }

}
