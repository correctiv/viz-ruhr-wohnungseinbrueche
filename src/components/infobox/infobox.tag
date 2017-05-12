import * as d3 from '../../scripts/lib/d3.js'
import renderSymbol from '../cities/render_city.js'

<wed-infobox class="cor-viz-wed__infobox-wrapper">

  <div if={ feature } class="cor-viz-wed__infobox">
    <dl>
      <dt>{ feature.data.name }</dt>
      <dd>{ feature.data.bez }</dd>
      <dt>{ feature.data.c16 }</dt>
      <dd>erfasste Fälle</dd>
      <dt>{ feature.data.ca16 }</dt>
      <dd>aufgeklärte* Fälle</dd>
      <dt>{ feature.data.q16 } %</dt>
      <dd>Aufklärungsquote*</dd>
    </dl>
    <span class="cor-viz-wed__infobox__annotation">* Aufgeklärt heißt, es wurden Tatverdächtige ermittelt.</span>
    <span class="cor-viz-wed__infobox__annotation">Daten von 2016.</span>
    <button class="btn cor-viz-wed__infobox__close-btn"
      onclick={ close }>x</button>
    <div data-d3="map-symbol" class="cor-viz-wed__infobox__map-symbol"></div>
  </div>

  riot.control.on(riot.EVT.updateInfobox, feature => {
    this.update({feature})
    this.renderMapSymbol(feature)
  })

  riot.control.on(riot.EVT.emptyInfobox, () => {
    this.update({feature: null})
  })

  this.close = () => {
    if (this.opts.breakpoint === 'small') {
      riot.control.trigger(riot.EVT.closeInfobox)
    }
  }

  this.renderMapSymbol = feature => {
    const selection = d3.select('[data-d3="map-symbol"]')
    selection.selectAll('*').remove()
    renderSymbol({selection, feature})
  }

</wed-infobox>
