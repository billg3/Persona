(function() {
  function appendAgentMessage(chat, message) {
    if (!chat) { return; }

    var line = document.createElement('p');
    line.className = 'agent-message';
    line.textContent = message;
    chat.appendChild(line);
    chat.scrollTop = chat.scrollHeight;
  }

  function getRecommendation(transcript) {
    var text = (transcript || '').toLowerCase();

    if (text.indexOf('project') >= 0 || text.indexOf('launch') >= 0) {
      return 'Ask: "What is the biggest blocker before launch, and how can I help today?"';
    }

    if (text.indexOf('weekend') >= 0 || text.indexOf('coffee') >= 0 || text.indexOf('morning') >= 0) {
      return 'Ask: "What is one Manhattan spot that always resets your energy for the week?"';
    }

    if (text.indexOf('team') >= 0 || text.indexOf('work') >= 0) {
      return 'Ask: "What is one win your team had this week that you are proud of?"';
    }

    if (text.indexOf('client') >= 0 || text.indexOf('customer') >= 0) {
      return 'Ask: "What did the client care most about, and how can we respond quickly?"';
    }

    return 'Ask: "What are you most excited to focus on this morning?"';
  }

  function setupMorningApp() {
    var app = document.querySelector('.morning-app');
    if (!app || app.getAttribute('data-initialized') === 'true') { return; }
    app.setAttribute('data-initialized', 'true');

    var connectButtons = document.querySelectorAll('.connect-btn');
    var status = document.getElementById('connectionStatus');
    var roomName = document.getElementById('zoomRoomName');
    var transcript = document.getElementById('zoomTranscript');
    var recommendButton = document.getElementById('recommendPrompt');
    var simulateButton = document.getElementById('simulateTranscript');
    var micButton = document.getElementById('startListening');
    var chat = document.getElementById('agentChat');

    Array.prototype.forEach.call(connectButtons, function(button) {
      button.addEventListener('click', function() {
        var peer = button.getAttribute('data-peer');
        if (status) {
          status.textContent = 'Connected to ' + peer + '. Zoom room is ready.';
        }
        if (roomName) {
          roomName.textContent = peer + "'s Manhattan Morning Room";
        }
        appendAgentMessage(chat, '✅ Joined with ' + peer + '. Tip: start with a warm local question.');
      });
    });

    if (simulateButton) {
      simulateButton.addEventListener('click', function() {
        if (transcript) {
          transcript.value = 'We are preparing a project launch and need better team alignment this week.';
        }
        appendAgentMessage(chat, '🎧 Simulated transcript captured from Zoom.');
      });
    }

    if (recommendButton) {
      recommendButton.addEventListener('click', function() {
        var recommendation = getRecommendation(transcript ? transcript.value : '');
        appendAgentMessage(chat, '🤖 ' + recommendation);
      });
    }

    if (micButton) {
      micButton.addEventListener('click', function() {
        var SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;

        if (!SpeechRecognition) {
          appendAgentMessage(chat, '⚠️ Browser speech recognition unavailable. Please paste transcript text manually.');
          return;
        }

        var recognition = new SpeechRecognition();
        recognition.lang = 'en-US';
        recognition.interimResults = false;
        recognition.maxAlternatives = 1;

        recognition.onresult = function(event) {
          var heard = event.results[0][0].transcript;
          if (transcript) {
            transcript.value = heard;
          }
          appendAgentMessage(chat, '🎙️ Heard from Zoom: "' + heard + '"');
        };

        recognition.onerror = function() {
          appendAgentMessage(chat, '⚠️ Could not capture audio. Try again or paste transcript text.');
        };

        recognition.start();
        appendAgentMessage(chat, 'Listening for conversation snippets...');
      });
    }
  }

  document.addEventListener('DOMContentLoaded', setupMorningApp);
  document.addEventListener('turbolinks:load', setupMorningApp);
})();
