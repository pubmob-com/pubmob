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
all-topics-tag: All
---
<h1 class="text-center">Our pub sessions.</h1>
<p>At PubMob, you'll find a varied selection of engaging mob sessions, from hands-on coding to design workshops.</p>

<script type="text/javascript">
  function setText(id, text) {
    var topicHeader = document.getElementById(id)
    topicHeader.innerHTML = text
  }

  function setFilterSelectionText(displayElement, filterSelection, description) {
    setText(displayElement, filterSelection == 'All' ? '' : description)
  }

  function renderIf(element, condition) {
    element.style.display = condition ? 'unset' : 'none'
  }

  function renderIfContains(element, items, filterSelection) {
    renderIf(element, filterSelection == 'All' || items.includes(filterSelection))
  }

  function renderPostsFor(filterSelection) {
    var id = 0;
    {% for offering in site.offerings %}
      var element = document.getElementById(++id)
      renderIfContains(element, {{ offering.technologies | jsonify }}, filterSelection)
    {% endfor %}
  }

  function filterUsingTopic(displayElement, languageDisplayElement, filterSelection) {
    setFilterSelectionText(displayElement, filterSelection, ` for topic ${filterSelection}`)
    renderPostsFor(filterSelection)
  }

  function filterUsingLanguage(displayElement, filterSelection) {
    setFilterSelectionText(displayElement, filterSelection, ` for programming language ${filterSelection}`)
    renderPostsFor(filterSelection)
  }
</script>

<!-- TODO rename technologies to topics in offerings MD files -->

<section class="class-legend">
  <article class="filters">
    <div>
      <p>Filter classes by topic: </p>
      {% assign all-selections = "" | split: "" %}
      {% for offering in site.offerings %}
        {% assign all-selections = all-selections | concat: offering.technologies %}
      {% endfor %}
      {% assign all-selections = all-selections | uniq | sort %}
      <ul class="all-selections">
        <li>
          <a id="All" onclick="filterUsingTopic('selectedTopic', 'selectedLanguage', 'All')">*All*</a>
        </li>
        {% for topic in all-selections %}
        <li>
          <a id="{{ selection }}" onclick="filterUsingTopic('selectedTopic', 'selectedLanguage', this.id)" href="javascript:void(0);">{{ selection }}</a>
        </li>
        {% endfor %}
      </ul>
    </div>

    <div>
      <p>Filter classes by programming language: </p>
      {% assign all-selections = "" | split: "" %}
      {% for offering in site.offerings %}
        {% assign all-selections = all-selections | concat: offering.languages %}
      {% endfor %}
      {% assign all-selections = all-selections | uniq | sort %}
      <ul class="all-selections">
        <li>
          <a id="All" onclick="filterUsingLanguage('selectedTopic', 'selectedLanguage', 'All')">*All*</a>
        </li>
        {% for selection in all-selections %}
        <li>
          <a id="{{ selection }}" onclick="filterUsingLanguage('selectedTopic', 'selectedLanguage', this.id)" href="javascript:void(0);">{{ selection }}</a>
        </li>
        {% endfor %}
      </ul>
    </div>
  </article>
  {% include skills-key.html %}
</section>

<p>Showing all classes<span id="selectedTopic" /></p>
{% assign id = 0 %}
{% for offering in site.offerings %}
  {% assign id = id | plus:1 %}
  {% include offering.html %}
{% endfor %}

