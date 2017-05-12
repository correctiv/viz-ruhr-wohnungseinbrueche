import * as d3 from '../../scripts/lib/d3.js'
import renderCity from './render_city.js'

<wed-city
  onmouseover={ selectCity }
  class="cor-viz-wed__city-container
  { cor-viz-wed__city-container--active: opts.active}">

  <div data-d3="city-{ data.id }"
    class="cor-viz-wed__city-map__container"></div>
  <h4 class="cor-viz-wed__city__name">{ data.name_short }</h4>
  <span class="cor-viz-wed__city__inline-data">Fälle: <strong>{ data.c16 }</strong></span>
  <button class="btn cor-viz-wed__city__collapse-btn
    { cor-viz-wed__city__collapse-btn--active: opts.active}"
    disabled={ opts.active }
    onclick={ selectCity }>zeige Infos</button>

  this.data = this.opts.feature.data

  this.on('mount', () => {
    renderCity({
      feature: this.opts.feature,
      selection: d3.select(`[data-d3="city-${this.data.id}"]`)
    })
  })

  this.selectCity = () => {
    riot.control.trigger(riot.EVT.selectCity, this.opts.feature)
  }

</wed-city>
