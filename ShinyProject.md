ShinyProject
========================================================
author: 
date: 

First Slide
========================================================

For more details on authoring R presentations click the
**Help** button on the toolbar.

- Bullet 1
- Bullet 2
- Bullet 3

ui.r and server.r code
========================================================
<!--html_preserve--><div class="container-fluid">
<h2>Yellowstone Old Faithful Geyser Eruption time Prediction</h2>
<div class="row">
<div class="col-sm-4">
<form class="well">
<div class="form-group shiny-input-container">
<label for="wait">Enter geyser waiting time</label>
<input id="wait" type="number" class="form-control" value="80" min="45" max="5000" step="1"/>
</div>
<div class="form-group shiny-input-container">
<label class="control-label" for="waitingTimeUnit">Units:</label>
<div>
<select id="waitingTimeUnit"><option value="Minutes" selected>Minutes</option>
<option value="Seconds">Seconds</option></select>
<script type="application/json" data-for="waitingTimeUnit" data-nonempty="">{}</script>
</div>
</div>
<div>
<button type="submit" class="btn btn-primary">Submit</button>
</div>
</form>
</div>
<div class="col-sm-8">
<h3>Results of prediction</h3>
<h4>You entered a geyser waiting time of </h4>
<div id="inputValue" class="shiny-text-output"></div>
<h4>Which resulted in a prediction of (in minutes) </h4>
<pre id="prediction" class="shiny-text-output"></pre>
</div>
</div>
</div><!--/html_preserve-->

Slide With Plot
========================================================


