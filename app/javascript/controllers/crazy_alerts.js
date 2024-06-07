import Swal from 'sweetalert2';

export function crazyAlert() {
  Swal.fire({
    title: "Custom width, padding, color, background.",
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
  });
}
