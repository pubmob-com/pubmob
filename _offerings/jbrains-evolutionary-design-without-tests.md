---
layout: offering-page
pagename: offering
session-lead-id: jbrains
session-lead-name: "J. B. Rainsberger"
name: "Evolutionary Design Without Tests"
twelve-words-or-fewer: "Sometimes you just want to see the design evolve."
topics: [design, evolutionary design, refactoring]
languages: [java]
graphic:
public-or-private: public
is-for-experienced-mobbers: false
exercise-skill: intermediate
repo: 
next-available-sessions: ["2021-03-08T14:30Z","2021-03-15T13:30Z","2021-03-22T13:30Z","2021-03-29T13:30Z"]
prerequisites: []
summary-blurb-80-words: "Let's see how safely and deftly we can move without tests. We'll focus on guiding the design to evolve and we'll write the tests in our heads. We're professionals; we can trust each other."
booking-link: "https://a.flexbooker.com/widget/75e809c1-6688-42cc-9fbf-77b001c15991?serviceIds=39218"
active: true
mob-tech: mob
backsite: "javascript:history.back()"
twitter-card:
    type: "summary_large_image"
    site_username: "@PubMobDotCom"
    creator_username: "@jbrains"
    title: "Evolutionary Design Without* Tests"
    description: "Let's see how safely and deftly we can move without tests. We'll focus on guiding the design to evolve and we'll write the tests in our heads. We're professionals; we can trust each other."
    image_url: "https://pubmob.com/assets/images/pubs/jbrains.jpg"
---
<style type="text/css">
#offering li { 
    font-size: 1.5em; 
    list-style: disc;
}
</style>

I love TDD. Not everyone does. Sometimes we just want to practise guiding a design to evolve without spending time to write tests. I don't _recommend_ this as a way to work, but I understand why you might prefer it, **especially if you've been practising TDD for a while and worry that it still just... feels... so... slow**. Sometimes it helps to spend time focusing on guiding a design to evolve using tiny steps, frequent commits, and a trusted guide. (That's me!)

We'll work in Java, because compile-time type checking helps make this safer. We'll work on my teaching example, because I know it well and consequently we'll be able to get moving sooner. But you'll drive---and when you go down a dusty road, I'll be there to help you get back on track. Just keep this in mind: without tests, we'll need to take _teeny, tiny steps_ just to be safe. Don't worry: I trust you.

## What Do You Mean by "Without" Tests?

I would like to explore two key questions: when do we truly need automated tests and which habits do we (collectively) have that compensate enough for not running automated tests? Accordingly, I propose the following basic rules:

- We don't write automated tests. (We already know how to live with them; let's explore life without them.)
- We try not to run the code at all. We try to convince ourselves that the code is correct merely by looking at it. (This will affect how we change the code as well as how we organize the code.)
- If we run the code, then we decide whether to run the entire application or execute code in a REPL. When we run the code, we discuss why we chose to run the code.

**Let me be clear about a few things**. These sessions are _not_ a recommendation to _stop_ writing automated tests. These sessions are not trying to "prove" anything about TDD or not TDD. My goal here is to focus on letting the design evolve while putting extra pressure on us to keep the design _really_ simple. Can we make the design so simple that we can feel confident enough just by looking at it? If yes, then how? If not, then why not? And if it's complicated, then let's learn more about what makes it complicated. In the meantime, we'll focus on good design principles, accurate refactoring, and we'll work in _really small_ steps.