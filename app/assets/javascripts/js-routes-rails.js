var JsRoutesRails = (function() {
  var routes = {};
  
  routes['choose_level_course_path'] = function(options) {
    return format('/:locale/courses/:id/choose_level', options);
  };
  
  routes['courses_path'] = function(options) {
    return format('/:locale/courses', options);
  };
  
  routes['course_path'] = function(options) {
    return format('/en/courses/:id', options);
  };
  

  function format(string, options) {
    var str = string.toString();
    for (var option in options) {
      str = str.replace(RegExp("\\:" + option, "gi"), options[option]);
    }

    return str;
  };

  return routes;
})();
