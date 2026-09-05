# Fox Jump Game

**Overview**
This repository acts as a storage vault for the exported HTML5 files of a game developed in the Godot Engine. It was built using free, open-source assets to experiment with Godot's web export capabilities. The game relies on WebAssembly and JavaScript to execute the engine logic directly within a browser environment.

**Included Files**
* **HTML/JS:** The core `index.html` entry point and the `index.js` engine script.
* **WebAssembly:** The compiled `index.wasm` engine code.
* **Game Data:** The `index.pck` package containing all game assets, scenes, and logic.
* **Audio:** The `index.audio.worklet.js` script handling audio processing.

**Running the Game Locally**
Because of standard browser CORS (Cross-Origin Resource Sharing) restrictions, simply double-clicking the `index.html` file will result in a loading error. These files must be served through a local web server to run the game.

If Python is installed, open a terminal in this repository's directory and run:

`python -m http.server 8000`

Then, open a web browser and navigate to `http://localhost:8000`.

**Credits**
* **Engine:** Godot Engine
* **Assets:** Free community assets sourced from Kenney and OpenGameArt.
