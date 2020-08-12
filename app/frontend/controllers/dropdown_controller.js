import { Controller } from 'stimulus';

export default class extends Controller {
  static classes = ['toggle'];

  static targets = ['menu'];

  initialize() {
    this.menuOpen = ![...this.menuTarget.classList].includes(this.toggleClass);
  }

  toggle() {
    this.menuTarget.classList.toggle(this.toggleClass);
    this.menuOpen = !this.menuOpen;
  }

  hide(event) {
    if (this.element.contains(event.target) === false && this.menuOpen) {
      this.toggle();
    }
  }
}
