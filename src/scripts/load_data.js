import * as topojson from 'topojson'

const geoSource = require('json!../data/nrw_landkreise_simplify200.topo.json')  // FIXME config.json
const wedData = require('json!../data/wed.json')

export default ({
  topoLayerName,
  colors
}) => {
  const data = topojson.feature(geoSource, geoSource.objects[topoLayerName])
  data.features.map(f => {
    const n = f.properties.GEN
    const ix = x => n.indexOf(x) > -1
    f.data = wedData[f.properties.AGS]
    f.data.name = n
    f.data.name_short = ix('Ruhr') ? 'Mülheim' : ix('glad') ? 'M. Gladbach' : n
    f.data.bez = f.properties.BEZ
    f.color = colors[+f.data.c]
    f.data.id = f.properties.AGS
  })
  return data
}
