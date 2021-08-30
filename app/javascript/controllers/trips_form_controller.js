import { Controller } from "stimulus"

export default class extends Controller {

  static targets = ["destination", "timeframe", "people", "transport", "submit", "group", "destinationTab", "timeframeTab", "peopleTab", "transportTab"]


  revealDestination() {
    this.destinationTabTarget.classList.add('completed')
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.destinationTarget.classList.remove("d-none")
  }

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

  previousDestination() {
    this.timeframeTabTarget.classList.remove('completed')
    this.peopleTabTarget.classList.remove('completed')
    this.transportTabTarget.classList.remove('completed')
    this.destinationTabTarget.classList.add('completed')
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.destinationTarget.classList.remove("d-none")
  }

  previousTimeframe() {
    this.transportTabTarget.classList.remove('completed')
    this.peopleTabTarget.classList.remove('completed')
    this.timeframeTabTarget.classList.add('completed')
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.timeframeTarget.classList.remove("d-none")
  }

  previousPeople() {
    this.transportTabTarget.classList.remove('completed')
    this.peopleTabTarget.classList.add('completed')
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.peopleTarget.classList.remove("d-none")
  }

  previousTransport() {
    this.transportTabTarget.classList.add('completed')
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.transportTarget.classList.remove("d-none")
  }

  previousSubmit() {
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.submitTarget.classList.remove("d-none")
  }
}
