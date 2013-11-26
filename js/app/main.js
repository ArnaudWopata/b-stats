(function() {
  var cellSize, data, height, svg, width;

  width = 960;

  height = 136;

  cellSize = 17;

  data = [
    {
      day: 'sun',
      hour: 0
    }, {
      day: 'sat',
      hour: 2
    }
  ];

  svg = d3.select('.per-hour').selectAll('p').data(data).enter().append('p').text(function(d) {
    return d.day;
  });

}).call(this);
