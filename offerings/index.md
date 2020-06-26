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
    <h3>Our pub sessions.</h3>
    <p class="p-top half-txt">You'll find a varied selections of engaging mob sessions, from hands-on coding to design workshops. Click on a session for further details.</p>
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
   
{% for offering in site.offerings %}
<section class="offering">
  <article class="left">
    <h1><a href="{{ offering.id }}">{{ offering.name }}</a></h1>
    <h2><a href="/tenders/{{ offering.tender-id }}">{{ offering.tender-name }}</a></h2>
    <p class="summary"><em>{{ offering.twelve-words-or-fewer | strip_html | truncatewords: 15 }}</em></p>
    <p class="longer-description">{{ offering.summary-blurb-300-words | truncatewords: 300 }}</p>
    <button>Book now</button>
  </article>
  <article class="right">
    <div class="student-level">
      <div><p class="top">Skill</p> <p class="bottom">B</p></div>
      <div>
        <p class="top"></p> 
        <p class="bottom">
          {% if offering.is-mob-newbie-friendly == true %}
            <img class="icon" src="/assets/images/misc-icons/checkmark.svg"/>
            mob newb friendly
          {% endif %}
        </p>
      </div> 
    </div>
    <div class="topics">
      <p>Topics: {{ offering.technologies | array_to_sentence_string }}</p>
    </div>
    {% if offering.languages.size > 0 %}
      <div class="programming-language">
        <!-- TODO keep consistent size? -->
        <!-- Languages: -->
          {% for language in offering.languages %}
            {% assign filename = "/assets/images/programming-language-icons/" | append: language | append: ".svg" %}
            <img class="icon" title="{{ language }}" src="{{ filename }}" />
          {% endfor %}
      </div>
    {% endif %}
  </article>
</section>
{% endfor %}

<!--

        <div><img src="/assets/images/programming-languages/php.png" /></div>

	    <script type="text/javascript">
	 	   var colors = ['#a6e3b6','#ae9ed9','#9eccd9','#d99ed3','#d99ea4','#d9cd9e','#bcd99e','#b69ed9','#9ec6d9','#9ed9a2','#d5d99e','#d9bf9e'];
	 	   var random_color = colors[Math.floor(Math.random() * colors.length)];
	 	   $('.offer-{{forloop.index}}').css('background-color', random_color);
	    </script>
-->
