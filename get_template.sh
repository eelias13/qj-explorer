mkdir -p monaco/vs
mkdir -p monaco/vs/editor
mkdir -p monaco/vs/base/browser/ui/codicons/codicon

wget https://raw.githubusercontent.com/eelias13/qj-explorer/refs/heads/main/monaco/vs/loader.js -O monaco/vs/loader.js
wget https://raw.githubusercontent.com/eelias13/qj-explorer/refs/heads/main/monaco/vs/editor/editor.main.js -O monaco/vs/editor/editor.main.js
wget https://raw.githubusercontent.com/eelias13/qj-explorer/refs/heads/main/monaco/vs/editor/editor.main.css -O monaco/vs/editor/editor.main.css
wget https://raw.githubusercontent.com/eelias13/qj-explorer/refs/heads/main/monaco/vs/base/browser/ui/codicons/codicon/codicon.ttf -O monaco/vs/base/browser/ui/codicons/codicon/codicon.ttf
wget https://raw.githubusercontent.com/eelias13/qj-explorer/refs/heads/main/monaco/vs/base/worker/workerMain.js -O monaco/vs/base/worker/workerMain.js
wget https://raw.githubusercontent.com/eelias13/qj-explorer/refs/heads/main/index.html -O index.html

touch wasm_loader.js
touch script.js