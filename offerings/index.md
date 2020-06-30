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
<div class="row">
  <div class="heading-title text-center">
    <h1>Our pub sessions.</h1>
  </div>
</div>

<script type="text/javascript">
  function setTechnologyHeaderText(selectedTechnology) {
    var technologyHeader = document.getElementById('selectedTechnology');
    technologyHeader.innerHTML = `Selected tech: ${selectedTechnology}`
  }

  function renderIfOfferingHasTechnology(div, technologies, selectedTechnology) {
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

<!--
<div class="offerings">
  <p>Technology filters:</p>
  <div>
    <a id="All" onclick="filterUsingTechnology('All')">*All*</a>
    <a id="TDD" onclick="filterUsingTechnology(this.id)" href="javascript:void(0);">TDD</a>
    <a id="design" onclick="filterUsingTechnology(this.id)" href="javascript:void(0);">design</a>
    <a id="refactoring" onclick="filterUsingTechnology(this.id)" href="javascript:void(0);">refactoring</a>
    <p id="selectedTechnology"></p>
  </div>
<div>
-->   

<section class="overview">
  <article class="description">
    <p>At PubMob, you'll find a varied selection of engaging mob sessions, from hands-on coding to design workshops.</p>
    <p>Click on the title of a session for further details. Click on the booking button to see a calendar of available dates.</p>
    <p>Hover over an icon to see what it represents.</p>
  </article>
  {% include skills-key.html %}
</section>
   
{% for offering in site.offerings %}
  {% include offering.html %}
{% endfor %}

