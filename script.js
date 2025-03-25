
function get_title() {
    return "JSON Explorer with JQ"
}

function setup_editor(monaco, editor_el) {
    const editor = monaco.editor.create(editor_el, {
        value: `{
  "a": {
    "big": {
      "json": [
        "full",
        "of",
        "important",
        "things"
      ]
    }
  }
}`,
        language: 'json',
        theme: 'vs-dark'
    });

    return editor;
}


function run_code(editor, output_el) {
    output_el.innerText = editor.getValue();
}

function setup_cmd(editor, output_el) {
    const commands = {
        help: () => "Available commands: help, greet, clear",
        hello: (args) => "hello " + args,
        jq: (args) => {
            try {
                let data = JSON.parse(editor.getValue())
                jq.then(jq => output_el.innerText += jq.json(data, args.join(" ")) + "\n");
            } catch (error) {
                output_el.innerText += `ERROR: while parsing json \n${error}\n`
            }
        },
        print: () => editor.getValue(),
        clear: () => {
            output_el.innerText = "";
            return "";
        },
    };

    return commands;
}