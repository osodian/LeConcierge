import { Controller } from "stimulus"

export default class extends Controller {

  static targets = ["allTab", "restaurantTab", "museumTab", "clubTab", "sightTab", "outdoorTab", "groupTab", "group", "restaurant", "museum", "club", "sight", "outdoor"]

  revealAll() {
    this.groupTabTargets.forEach(groupTab => groupTab.classList.remove('completed'));
    this.allTabTarget.classList.add('completed')
    this.groupTargets.forEach(group => group.classList.remove('d-none'));
  }

  revealRestaurant() {
    this.groupTabTargets.forEach(groupTab => groupTab.classList.remove('completed'));
    this.restaurantTabTarget.classList.add('completed')
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.restaurantTarget.classList.remove("d-none")
  }

  revealMuseum() {
    this.groupTabTargets.forEach(groupTab => groupTab.classList.remove('completed'));
    this.museumTabTarget.classList.add('completed')
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.museumTarget.classList.remove("d-none")
  }


  revealClub() {
    this.groupTabTargets.forEach(groupTab => groupTab.classList.remove('completed'));
    this.clubTabTarget.classList.add('completed')
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.clubTarget.classList.remove("d-none")
  }

  revealSight() {
    this.groupTabTargets.forEach(groupTab => groupTab.classList.remove('completed'));
    this.sightTabTarget.classList.add('completed')
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.sightTarget.classList.remove("d-none")
  }

  revealOutdoor() {
    this.groupTabTargets.forEach(groupTab => groupTab.classList.remove('completed'));
    this.outdoorTabTarget.classList.add('completed')
    this.groupTargets.forEach(group => group.classList.add('d-none'));
    this.outdoorTarget.classList.remove("d-none")
  }
}
