import * as topojson from 'topojson'

const geoSource = require('json!../data/nrw_landkreise_simplify200.topo.json')  // FIXME config.json

export default ({
  topoLayerName,
  colors
}) => {
  const _colors = Object.values(colors)
  const data = topojson.feature(geoSource, geoSource.objects[topoLayerName])
  data.features.map(f => {
    f.data = {
      value: Math.round(Math.random() * 100),
      name: f.properties.GEN,
      bez: f.properties.BEZ,
      id: f.properties.AGS
    }
    f.color = _colors[Math.floor(Math.random() * _colors.length)]
  })
  return data
}
