import * as d3 from 'd3';

const diagram = (events) => {
  const margin = {top: 20, right: 20, bottom: 30, left: 50};
  const width = 960 - margin.left - margin.right;
  const height = 500 - margin.top - margin.bottom;

  const svg = d3.select("#timeline")
    .append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
    .append("g")
    .attr("transform", `translate(${margin.left},${margin.top})`);

  const x = d3.scaleTime()
    .domain(d3.extent(events, d => new Date(d.date)))
    .range([0, width]);

  svg.append("g")
    .attr("transform", `translate(0,${height})`)
    .call(d3.axisBottom(x));

  svg.selectAll("circle")
    .data(events)
    .enter()
    .append("circle")
    .attr("cx", d => x(new Date(d.date)))
    .attr("cy", height / 2)
    .attr("r", 5);
}

document.addEventListener('DOMContentLoaded', () => {
  fetch('/timeline.json')
    .then(response => response.json())
    .then(events => {
      diagram(events);
    });
});
