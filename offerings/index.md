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
blink-link:
blink-text: Book Now
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


<section class="legend">
  <article class="overview">
    <p>At PubMob, you'll find a varied selection of engaging mob sessions, from hands-on coding to design workshops.</p>
    <p>Click on a session for further details.</p>
  </article>
  <article class="key">
    <ul class="top">
      <li>
        <img class="small-icon" src="/assets/images/misc-icons/beginner.svg"/>
        <p>Introductory</p>
      </li>
      <li>
        <img class="small-icon" src="/assets/images/misc-icons/intermediate.svg"/>
        <p>Intermediate</p>
      </li>
      <li>
        <img class="small-icon" src="/assets/images/misc-icons/expert.svg"/>
        <p>Advanced</p>
      </li>
    </ul>
    <ul>
      <li>
        <img class="small-icon" src="/assets/images/misc-icons/experienced-mobbers.svg"/>
        <p>Experienced mobbers</p>
      </li>
    </ul>
  </article>
</section>
   
{% for offering in site.offerings %}
<section class="offering">
  <article class="left">
    <h1><a href="{{ offering.id }}">{{ offering.name }}</a></h1>
    <h2><a href="/tenders/{{ offering.tender-id }}">{{ offering.tender-name }}</a></h2>
    <p class="summary"><em>{{ offering.twelve-words-or-fewer | strip_html | truncatewords: 15 }}</em></p>
    {% assign blurbLength = offering.summary-blurb-125-words | number_of_words %}
    {% if blurbLength <= 125 %}
      <p class="longer-description">{{ offering.summary-blurb-125-words | truncatewords: 125 }}</p>
    {% endif %}
    {% assign link = "http://example.com" %}
    {% assign text = page.blink-text %}
    {% capture button_content %}
      {{ link }}
      {{ text }}
    {% endcapture %}
    {% include button-link.html content=button_content %}
  </article>
  <article class="right">
    <div class="student-level">
        {% assign skill-icon-filename = "/assets/images/misc-icons/" | append: offering.exercise-skill | append: ".svg" %}
        <img class="icon" src="{{ skill-icon-filename }}" />
        {% if offering.is-for-experienced-mobbers == true %}
          <img class="icon" src="/assets/images/misc-icons/experienced-mobbers.svg"/>
        {% endif %}
    </div>
    <div class="topics">
      <p>Topics: {{ offering.technologies | array_to_sentence_string }}</p>
    </div>
    {% if offering.languages.size > 0 %}
      <div class="programming-language">
        {% for language in offering.languages %}
          {% assign filename = "/assets/images/programming-language-icons/" | append: language | append: ".svg" %}
          <img class="icon" title="{{ language }}" src="{{ filename }}" />
        {% endfor %}
      </div>
    {% endif %}
  </article>
</section>
{% endfor %}

