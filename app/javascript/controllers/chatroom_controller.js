import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chatroom"
export default class extends Controller {
  static targets = ["messagesArea", "chatroomItem", "messageContent"]
  staticId = ""
  connect() {
    this.chatroomItemTargets.forEach( element => {
      element.addEventListener("click", (event) => {
        const chatroomId = element.dataset.chatroomId
        this.loadMessages(chatroomId)
        this.loadedChatroom(chatroomId)
      })
    })
  }

  loadMessages(chatroomId) {

    fetch(`/chatrooms/${chatroomId}/messages`)
      .then(response => response.json())
      .then(messages => {

        this.messagesAreaTarget.innerHTML = ""
        messages.forEach(message => {
          const messageElement = document.createElement("div")
          messageElement.textContent = `${message.sender.username} : ${message.content}`
          this.messagesAreaTarget.appendChild(messageElement)
        })
        const container = document.getElementById("input-container")
        container.setAttribute("data-chatroom-id", chatroomId)
      })
  }

  sendNewMessage(chatroomId, content) {
    fetch(`/chatrooms/${chatroomId}/messages`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": document.querySelector("[name='csrf-token']").content
      },
      body: JSON.stringify({ message: {content: content} })
    })
      .then(response => response.json())
      .then(message => {
        const messageElement = document.createElement("div")
        messageElement.textContent = `${message.sender.username} : ${message.content}`
        this.messagesAreaTarget.appendChild(messageElement)
      })
  }

  loadedChatroom(chatroomId) {
    this.staticId = chatroomId
  }

  sendMessage(event) {
    event.preventDefault()
      const chatroomId = this.staticId
      console.log("=====>", chatroomId)
      const content = this.messageContentTarget.value.trim()
      if (content !== ""){
        this.sendNewMessage(chatroomId, content)
        this.messageContentTarget.value = ""
        this.loadMessages(chatroomId)
      }


  }
}
