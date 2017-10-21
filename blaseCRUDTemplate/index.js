module.exports = {
    name: "Blase CRUD template",
    directory: false,
    params: ["Name"],
    rules: function(config) {
      return({
        items: [
          { destinationFile: config.Name + "/item.html",   sourceTemplateFile: "item.html" },
          { destinationFile: config.Name + "/item.coffee", sourceTemplateFile: "item.coffee" },
          { destinationFile: config.Name + "/list.html",   sourceTemplateFile: "list.html" },
          { destinationFile: config.Name + "/list.coffee", sourceTemplateFile: "list.coffee" }
        ]
      });
    }
}
