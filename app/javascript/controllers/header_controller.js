import { Controller } from "@hotwired/stimulus";

export default class Header extends Controller {
  // ---
  // Targets
  static targets = ["signInModal"];

  // ---
  // Values
  static values = { isSignInModalVisible: Boolean };

  // ---
  // Classes
  static classes = ["hidden"];

  // ---
  // Actions
  toggleSignInModal() {
    // Update the state - Stimulus creates a property <valueName>Value
    // for each value that can be used as a getter and as a setter
    this.isSignInModalVisibleValue = !this.isSignInModalVisibleValue;
  }

  isSignInModalVisibleValueChanged() {
    // Stimulus callback <value name>Changed which is automatically
    // called when the value is changed
    this.signInModalTarget.classList.toggle(
      this.hiddenClass,
      !this.isSignInModalVisibleValue
    );
  }
}
