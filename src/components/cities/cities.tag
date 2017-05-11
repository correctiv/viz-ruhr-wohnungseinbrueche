import './city.tag'

<wed-cities class="cor-viz-wed__cities-container">

  <wed-city
    each={ feature in features}
    feature={ feature }
    config={ parent.opts.config }
    breakpoint={ parent.opts.breakpoint }
    active={ feature.data.id === parent.active }
  />

  this.features = this.opts.data.features.filter(f => f.properties.BEZ === 'Kreisfreie Stadt')
  this.active = null

  riot.control.on(riot.EVT.updateSelectedCity, ({data}) => {
    this.update({active: data.id})
  })

  riot.control.on(riot.EVT.emptyInfobox, () => {
    this.update({active: null})
  })
</wed-cities>
