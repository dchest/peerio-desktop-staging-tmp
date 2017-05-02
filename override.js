const jsonOverrides = require('json-overrides.json');
const fs = require('fs');

Object.keys(jsonOverrides).forEach(filename => {
    const original = JSON.parse(fs.readFileSync(filename, "utf8"));
    const modified = Object.assign(original, jsonOverrides[filename]);
    fs.writeFileSync(filename, JSON.stringify(modified, null, "  "));
});
