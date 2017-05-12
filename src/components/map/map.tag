import '../legend/legend.tag'
import renderMap from './render_map.js'
import hilight from '../../scripts/hilight.js'

<wed-map class="cor-viz-wed__map-wrapper">

  <div data-d3="d3-map" class="cor-viz-wed__map-container"></div>

  <wed-legend steps={ opts.config.steps } colors={ opts.config.colors } />

  this.on('mount', () => {
    this.selection = renderMap(this.opts)
    this.selection.on('mouseover', f => {
      riot.control.trigger(riot.EVT.mapMouseover, f)
    })
  })

  riot.control.on(riot.EVT.mapHilight, d => {
    this.hilight(this.selection.filter(_d => _d === d))
  })

  this.hilight = selection => {
    this.hilighted && this.hilighted.classed('-hilight', false)
    this.hilighted = selection
    hilight(selection)
  }

</wed-map>
