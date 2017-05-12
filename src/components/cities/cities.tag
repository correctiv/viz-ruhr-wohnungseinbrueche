import './city.tag'

<wed-cities class="cor-viz-wed__cities-container">

  <wed-city
    each={ feature in getFeatures() }
    feature={ feature }
    config={ parent.opts.config }
    breakpoint={ parent.opts.breakpoint }
    active={ feature.data.id === parent.active }
  />

  this.active = null

  riot.control.on(riot.EVT.updateSelectedCity, ({data}) => {
    this.update({active: data.id})
  })

  riot.control.on(riot.EVT.emptyInfobox, () => {
    this.update({active: null})
  })

  this.getFeatures = () => {
    const compare = (a, b) => b > a ? -1 : 1
    return this.opts.data.features.filter(f => f.properties.BEZ === 'Kreisfreie Stadt')
      .sort((a, b) => compare(a.data.name, b.data.name))
  }
</wed-cities>
