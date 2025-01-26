(async function () {
  while (!Spicetify.React || !Spicetify.ReactDOM) {
    await new Promise((resolve) => setTimeout(resolve, 10));
  }
  var autohideDplayer = (() => {
    // src/app.tsx
    async function main() {
      while (!Spicetify.Player || !Spicetify?.showNotification) {
        await new Promise((resolve) => setTimeout(resolve, 100));
      }

      function togglePlayerVisibility() {
        const player = document.querySelector(
          ".main-nowPlayingBar-nowPlayingBar",
        );
        if (player) {
          if (!Spicetify.Player.isPlaying()) {
            player.classList.add("hide-player");
            player.classList.remove("animate-border");
          } else {
            player.classList.remove("hide-player");
            player.classList.add("animate-border");
          }
        }
      }
      setInterval(togglePlayerVisibility, 500);
    }
    var app_default = main;

    // ../../../../../private/var/folders/7k/_mp97d4n2rb_8gk8dm257lm80000gn/T/spicetify-creator/index.jsx
    (async () => {
      await app_default();
    })();
  })();
})();
