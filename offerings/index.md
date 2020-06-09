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
<h3>Pub Sessions</h3>
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
  </div>
  <div>
-->   
   
<div class="container">
	<div class="row">
		{% for offering in site.offerings %}
        <a href="{{ offering.id }}">
        <div class="col-md-4 col-sm-4">
        		<div class='team-member offering-box offer-{{forloop.index}}'>
					<div class="team-img">
						<h4 class="offering-name">{{offering.name}}</h4>
					</div>
					<div class="team-hover">
						<div class="desk">
							<h4>{{ offering.tender-name }}</h4>
							<p>{{ offering.twelve-words-or-fewer | strip_html | truncatewords: 15 }}</p>
						</div>
					</div>
			</div>
		</div>
		</a>
		
	    <script type="text/javascript">
	 	   var colors = ['#a6e3b6','#ae9ed9','#9eccd9','#d99ed3','#d99ea4','#d9cd9e','#bcd99e','#b69ed9','#9ec6d9','#9ed9a2','#d5d99e','#d9bf9e'];
	 	   var random_color = colors[Math.floor(Math.random() * colors.length)];
	 	   $('.offer-{{forloop.index}}').css('background-color', random_color);
	    </script>
 	   {% endfor %}
   </div>
</div>			
