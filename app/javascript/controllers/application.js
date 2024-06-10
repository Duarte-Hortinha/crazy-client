import { Application } from "@hotwired/stimulus";
import AlertController from "./alert_controller";

const application = Application.start();

// Register the controller with Stimulus
application.register("alert", AlertController);

// Configure Stimulus development experience
application.debug = false;
window.Stimulus   = application;

export { application };
