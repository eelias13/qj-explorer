# qj-explorer

This repository is a browser-based editor version of the [qt](https://github.com/jqlang/jq) CLI application, utilizing [jq-web](https://github.com/fiatjaf/jq-web) (version 0.6.1).

## Running It

This application is built as a website. Open your static web server. For example, you can use the Python server:

```bash
python3 -m http.server
```

Once your server is running, you can execute the following command in the console **on the website**:

```bash
jq .a.big.json | ["empty", .[1], "useless",[3]] | join(" ")
```

This command takes the JSON you defined in the code section and runs the `jq` command with the specified arguments.


## Template

You can run the `get_template.sh` script to implement your browser editor. However, you must create your own `script.js` and `wasm_loader.js` if you use WebAssembly.

The `script.js` needs to implement the following function:

```js
function get_title() {
    return "My Title"
}

function setup_editor(monaco, editor_el) {
    // setup my lang with monaco
    const editor = monaco.editor.create(editor_el, {
        value: "your initial code",
        language: 'my-lang',
        theme: 'vs-dark'
    });

    return editor;
}


function run_code(editor, output_el) {
    const output = editor.getValue(); // compile code
    output_el.innerText += output;
}

function setup_cmd(editor, output_el) {
    const commands = {
        // add commands here
        help: () => "Available commands: help, clear ...",
        clear: () => {
            output_el.innerText = "";
            return "";
        },
    };
    return commands;
}
```