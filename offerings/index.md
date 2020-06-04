---
layout: default
pagename: offerings
title: PubMob | What's on Tap
description:
  What we offer
keywords:
pre-content: >
    <div class="grid">
      <div class="content">
        <picture>
          <source srcset='/assets/images/about/offerings.jpg' media='(max-width: 1080px)'>
          <source srcset='/assets/images/about/offerings.jpg' media='(min-width: 960px)'>
          <source srcset='/assets/images/about/offerings.jpg' media='(min-width: 830px'>
          <img src='/assets/images/about/offerings.jpg' alt='Offerings'>
        </picture>
      </div>
    </div>
post-content: >
title-bar-color: title-bar-light-green
title-bar-text: What's on Tap
---
<script type="text/javascript">
  function setTechnologyHeaderText(selectedTechnology) {
    var technologyHeader = document.getElementById('selectedTechnology');
    technologyHeader.innerHTML = `Selected tech: ${selectedTechnology}`
  }

  function renderIfOfferingHasTechnology(div, technologies, selectedTechnology) {
console.log("technologies", technologies);
console.log("selected tech", selectedTechnology);
      div.style.display = (selectedTechnology == 'All' || technologies.includes(selectedTechnology)) 
        ? 'unset' // TODO: does unset work in all browsers?
        : 'none';
  }

  function renderPostsFor(selectedTechnology) {
    var id = 0;
    {% for offering in site.offerings %}
      var offeringDiv = document.getElementById(++id);
      renderIfOfferingHasTechnology(offeringDiv, {{ offering.technologies | jsonify }}, selectedTechnology);
    {% endfor %}
  }

  function filterUsingTechnology(selectedTechnology) {
    setTechnologyHeaderText(selectedTechnology);
    renderPostsFor(selectedTechnology);
  }
</script>

<div class="offerings">
  <p>Technology filters:</p>
  <div>
    <a id="All" onclick="filterUsingTechnology('All')">*All*</a>
    {% assign allTech = "" | split: "," %}
    {% for offering in site.offerings %}
      {% assign allTech = allTech | concat: offering.technologies %}
    {% endfor %}
    {% assign allTech = allTech | uniq | sort %}

    {% for tech in allTech %}
    <a id="{{ tech }}" onclick="filterUsingTechnology(this.id)" href="javascript:void(0);">{{ tech }}</a>
    {% endfor %}
    <p id='selectedTechnology'></p>
  </div>
  <div>
  </div>
  <div>
   {% assign id = 0 %}
   {% for offering in site.offerings %}
     {% assign id = id | plus: 1 %}
     <div id="{{id}}">
     <li>
       <h5><a href="{{ offering.id }}">{{ offering.name }}</a></h5>
       <p>Tender: <a href="/tenders/{{offering.tender-id}}">{{ offering.tender-name }}</a></p>
      <br />
      <!-- fix above to derive tender name from offering, or something better -->
       <p>{{ offering.twelve-words-or-fewerblurb }}</p>
       <p>{{ offering.summary-blurb-300-words }}</p>
       <p>Tech: {{ offering.technologies | array_to_sentence_string: "and " }}</p>
       <p>Experience: {{offering.exercise-skill}}</p>
       <p>Upcoming dates:</p>
        <p>TBD</p>
     </li>
     </div>
   {% endfor %}
  </div>
</div>
