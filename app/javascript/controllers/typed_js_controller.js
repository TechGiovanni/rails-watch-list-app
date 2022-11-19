import { Controller } from "@hotwired/stimulus";
import Typed from "typed.js";

// Connects to data-controller="typed-js"
export default class extends Controller {
	connect() {
		new Typed(this.element, {
			strings: ["Enter Your Favorite Movie Category."],
			typeSpeed: 55,
			loop: false,
		});
	}
}
