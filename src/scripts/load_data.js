import * as topojson from 'topojson'

const geoSource = require('json!../data/nrw_landkreise_simplify200.topo.json')  // FIXME config.json
const wedData = require('json!../data/wed.json')

export default ({
  topoLayerName,
  colors
}) => {
  const data = topojson.feature(geoSource, geoSource.objects[topoLayerName])
  data.features.map(f => {
    f.data = wedData[f.properties.AGS]
    f.data.name = f.properties.GEN
    f.data.bez = f.properties.BEZ
    f.color = colors[f.data.c]
    f.data.id = f.properties.AGS
  })
  return data
}
