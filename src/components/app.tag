import './map/map.tag'
import './cities/cities.tag'
import './infobox/infobox.tag'

<wed-app class="cor-viz-wed">

  <wed-cities config={ opts.config.cities } data={ opts.data } breakpoint={ breakpoint }/>
  <wed-map config={ opts.config.map } data={ opts.data } breakpoint={ breakpoint } />
  <wed-infobox breakpoint={ breakpoint } />

  this.breakpoint = riot.STATE.breakpoint

  riot.control.on(riot.EVT.breakpointChange, breakpoint => {
    this.update({breakpoint})
  })

</wed-app>
