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
    if (topicHeader)
      topicHeader.innerHTML = text
    else
      console.log('id not found: ', id)
  }

  function element(id) {
    return document.getElementById(id)
  }

  function getText(id) {
    return document.getElementById(id).innerHTML
  }

  function renderIf(element, condition) {
    element.style.display = condition ? '' : 'none'
  }

  function renderPost(id, offeringLanguages, offeringTechnologies, topicFilterSelection, languageFilterSelection) {
    var element = document.getElementById(id);
    var shouldRender = (topicFilterSelection === '' && languageFilterSelection === '') ||
      (topicFilterSelection === '' && offeringLanguages.includes(languageFilterSelection)) ||
      (offeringTechnologies.includes(topicFilterSelection) && languageFilterSelection == '') ||
      (offeringTechnologies.includes(topicFilterSelection) && offeringLanguages.includes(languageFilterSelection));
    renderIf(element, shouldRender);
  }

  function renderPosts(topicFilterSelection, languageFilterSelection) {
    var id = 0;
    {% for offering in site.offerings %}
      renderPost(++id, 
        {{ offering.languages | jsonify }}, 
        {{ offering.technologies | jsonify }},
        topicFilterSelection, languageFilterSelection);
    {% endfor %}
  }

  function clearFilterSelections(elementIds) {
    for (let i = 0; i < elementIds.length; i++)
      setText(elementIds[i], '');
    renderPosts('', '');
    renderIf(element('programmingLanguageFilters'), false)
    renderIf(element('selectedProgrammingLanguageFilter'), false)
    renderIf(element('selectedTopicFilter'), false)
    renderIf(element('clearFiltersButton'), false)
  }

  function filterUsingTopic(displayElementId, filterSelection, existingLanguageElementId) {
    setText(displayElementId, filterSelection)
    renderIf(element('programmingLanguageFilters'), true)
    renderIf(element('selectedProgrammingLanguageFilter'), true)
    renderIf(element('selectedTopicFilter'), true)
    renderIf(element('clearFiltersButton'), true)
    var existingLanguageFilter = getText(existingLanguageElementId)
    renderPosts(filterSelection, existingLanguageFilter)
  }

  function filterUsingLanguage(displayElementId, filterSelection, existingTopicElementId) {
    setText(displayElementId, filterSelection)
    var existingTopicFilter = getText(existingTopicElementId)
    renderPosts(existingTopicFilter, filterSelection)
    renderIf(element('clearFiltersButton'), true)
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
        {% for selection in all-selections %}
        <li>
          <a id="{{ selection }}" onclick="filterUsingTopic('selectedTopic', this.id, 'selectedLanguage')" href="javascript:void(0);">{{ selection }}</a>
        </li>
        {% endfor %}
      </ul>
    </div>

    <div id="programmingLanguageFilters" style="display:none">
      <p>Refine by programming language: </p>
      {% assign all-selections = "" | split: "" %}
      {% for offering in site.offerings %}
        {% assign all-selections = all-selections | concat: offering.languages %}
      {% endfor %}
      {% assign all-selections = all-selections | uniq | sort %}
      <ul class="all-selections">
        {% for selection in all-selections %}
        <li>
          <a id="{{ selection }}" onclick="filterUsingLanguage('selectedLanguage', this.id, 'selectedTopic')" href="javascript:void(0);">{{ selection }}</a>
        </li>
        {% endfor %}
      </ul>
    </div>

    <div id="activeFilters">
      <button id="clearFiltersButton" 
        style="display:none"
        onclick="clearFilterSelections(['selectedTopic', 'selectedLanguage'])">
        Clear filters
      </button>
      <p id="selectedTopicFilter" style="display:none">Showing all classes on topic: <b><span id="selectedTopic" /></b></p>
      <p id="selectedProgrammingLanguageFilter" style="display:none">Using the programming language: <b><span id="selectedLanguage" /></b></p>
    </div>

  </article>
  {% include skills-key.html %}
</section>


{% assign id = 0 %}
{% for offering in site.offerings %}
  {% assign id = id | plus:1 %}
  {% include offering.html %}
{% endfor %}

