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
  function setTopicHeaderText(selectedTopic) {
    var topicHeader = document.getElementById('selectedTopic');
    topicHeader.innerHTML = `Selected topic: ${selectedTopic}`
  }

  function renderIfOfferingHasTopic(div, topics, selectedTopic) {
      div.style.display = (selectedTopic == 'All' || topics.includes(selectedTopic)) 
        ? 'unset' // TODO: does unset work in all browsers?
        : 'none';
  }

  function renderPostsFor(selectedTopic) {
    var id = 0;
    {% for offering in site.offerings %}
      var offeringDiv = document.getElementById(++id);
      renderIfOfferingHasTopic(offeringDiv, {{ offering.technologies | jsonify }}, selectedTopic);
    {% endfor %}
  }

  function filterUsingTopic(selectedTopic) {
    setTopicHeaderText(selectedTopic);
    renderPostsFor(selectedTopic);
  }
</script>

<!-- TODO rename technologies to topics in offerings MD files -->
<div>
  <p>Filter classes by topic:</p>
  <div class="all-topics">
    {% assign all-topics = "" | split: "" %}
    {% for offering in site.offerings %}
      {% assign all-topics = all-topics | concat: offering.technologies %}
    {% endfor %}
    {% assign all-topics = all-topics | uniq | sort %}
    <a id="All" class="topic" onclick="filterUsingTopic('All')">*All*</a>
    {% for topic in all-topics %}
      <a id="{{ topic }}" class="topic" onclick="filterUsingTopic(this.id)" href="javascript:void(0);">{{ topic }}</a>
    {% endfor %}
    <p id="selectedTopic"></p>
  </div>
<div>

<section class="overview">
  <article class="description">
    <p>At PubMob, you'll find a varied selection of engaging mob sessions, from hands-on coding to design workshops.</p>
    <p>Click on the title of a session for further details. Click on the booking button to see a calendar of available dates.</p>
    <p>Hover over an icon to see what it represents.</p>
  </article>
  {% include skills-key.html %}
</section>
   
{% assign id = 0 %}
{% for offering in site.offerings %}
  {% assign id = id | plus:1 %}
  {% include offering.html %}
{% endfor %}

