import * as d3 from '../../scripts/lib/d3.js'

export default ({
  selection,
  feature
}) => {
  const [width, height] = [100, 100]
  const path = d3.geoPath().projection(d3.geoMercator().fitSize([width, height], feature))
  return selection.append('svg')
      .attr('preserveAspectRatio', 'xMinYMin meet')
      .attr('viewBox', '0 0 ' + width + ' ' + height)
      .attr('class', 'cor-viz-wed__city-map-svg')
    .append('g')
      .attr('class', 'cor-viz-wed__city-map-g')
    .selectAll('path').data([feature]).enter().append('path')
      .attr('class', 'cor-viz-wed__city-map-path')
      .attr('d', path)
      .attr('fill', f => f.color)
}
