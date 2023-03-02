import { Controller } from "@hotwired/stimulus"
import JSConfetti from 'js-confetti'

export default class extends Controller {
  static values = {
    confettinumber: String
  }


  myConfetti() {
    console.log(this.confettinumberValue)
    const jsConfetti = new JSConfetti()
    jsConfetti.addConfetti(
      {
        emojis: ['🌟', '💥', '✨', '💫', '⭐'],
        emojiSize: 100,
        confettiNumber: this.confettinumberValue/10,
      }
    )
  }

}
