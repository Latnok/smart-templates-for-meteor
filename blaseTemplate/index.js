
module.exports = {

    name: "Blase template",
    directory: false,
    params: ["Name"],
    rules: function(config) {
      return({
        items: [
          { destinationFile: config.Name + "/" + config.Name + ".html",   sourceTemplateFile: "template.html" },
          { destinationFile: config.Name + "/" + config.Name + ".coffee", sourceTemplateFile: "template.coffee" }
        ]
      });

    }

}
