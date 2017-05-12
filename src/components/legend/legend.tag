<wed-legend class="cor-viz-wed__legend">

  <h4 class="cor-viz-wed__legend-title">Einbrüche pro 100.000 Einwohner</h4>
  <div class="cor-viz-wed__legend-item" each={ step in opts.steps }>
    <span class="cor-viz-wed__legend-color" style="background-color:{ parent.getColor(step) }" />
    <span class="cor-viz-wed__legend-label">{ step }</span>
  </div>

  this.getColor = step => this.opts.colors[this.opts.steps.indexOf(step)]

</wed-legend>
