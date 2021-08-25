import { Controller } from "stimulus"

export default class extends Controller {

  static targets = ["timeframe", "people", "transport", "submit", "group", "timeframeTab", "peopleTab", "transportTab"]


  revealTimeframe() {
    this.timeframeTabTarget.classList.add('completed')
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.timeframeTarget.classList.remove("d-none")
  }

  revealPeople() {
    this.peopleTabTarget.classList.add('completed')
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.peopleTarget.classList.remove("d-none")
  }

  revealTransport() {
    this.transportTabTarget.classList.add('completed')
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.transportTarget.classList.remove("d-none")
  }

  revealSubmit() {
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.submitTarget.classList.remove("d-none")
  }

}
