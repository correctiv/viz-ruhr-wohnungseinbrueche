// event names
const EVT = {
  selectCity: 'select_city',
  updateSelectedCity: 'update_selected_city',

  mapMouseover: 'map_mouseover',
  mapHilight: 'map_hilight',

  updateInfobox: 'update_infobox',
  closeInfobox: 'close_infobox',
  emptyInfobox: 'empty_infobox',

  breakpointChange: 'breakpoint_change'
}

// event bus
const C = riot.observable()

// payload: param `data` is always a single geojson feature
// from the initial geoData

// city select via list (hover or click)
C.on(EVT.selectCity, data => {
  C.trigger(EVT.updateInfobox, data)
  C.trigger(EVT.mapHilight, data)
  C.trigger(EVT.updateSelectedCity, data)
})

// close infobox via close-btn
C.on(EVT.closeInfobox, () => {
  C.trigger(EVT.emptyInfobox)
})

// map mouseover (also via click on mobile)
C.on(EVT.mapMouseover, data => {
  C.trigger(EVT.updateInfobox, data)
  C.trigger(EVT.mapHilight, data)
  C.trigger(EVT.updateSelectedCity, data)
})


// DEBUG
// C.on('*', (event, data) => {
//   console.log(event, data)
// })

// hold some global state
riot.STATE = {}

// make event bus global
riot.EVT = EVT
riot.control = C

