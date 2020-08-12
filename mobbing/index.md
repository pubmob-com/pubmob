---
layout: back
pagename: pubmob
title: PubMob | Why Mob Programming?
description: Why is PubMob based on mob programming? What's to like?
keywords:
pre-content: >
    <div class="grid">
      <div class="content">
        <picture>
          <source srcset='/assets/images/mastheads/masthead-laptop-mob2.jpg' media='(max-width: 1080px)'>
          <source srcset='/assets/images/mastheads/masthead-laptop-mob2.jpg' media='(min-width: 960px)'>
          <source srcset='/assets/images/mastheads/masthead-laptop-mob2.jpg' media='(min-width: 830px'>
          <img src='/assets/images/mastheads/masthead-laptop-mob2.jpg' alt='About PubMob'>
        </picture>
      </div>
    </div>
post-content: >
title-bar-color: title-bar-light-green
title-bar-text: Why Mob Programming?
backsite: "javascript:history.back()"
---
You've likely spent most of your software development careeer in a cubicle or office, flying solo for most of your development efforts.

You might have spent some years pair-programming with other developers on your team. You might also have spent some years *strongly resisting* pair programming.

## Does anyone really like the idea of pairing?

Some of us do enjoy pairing and find it effective.

![pairing](/assets/images/mobbing/pairing.jpg)
{: .max-width-image}

But most software developers recoil at the thought of sitting next to another developer throughout their day. Programming is a heavy brain activity. And we work best when we can sit in a quiet room and focus on the problem at hand by ourselves, right? Why would we use *two* developers to complete one task?

Yet programming isn't just dreaming up a solution and slapping out code to support the solution. It requires a *correct* solution, for one, and a cleanly-designed solution in order to support later needs.

To succeed over time, you must pay continual attention to your system's design. You must ensure that that others can understand your encoded solution, as well as the behaviors you intended.

The core great idea behind pairing: Two heads are indeed better than one. You'll create a better design when working in pairs, and if you swap pairs regularly, you'll build a system that everyone's happier with--customers included.

Too bad pairing turns off so many people. We think part of it is the intimacy it demands, and the interpersonal challenges such intimacy can create.

## Why mob programming builds a better product

Mob programming is sort of like pairing, except it isn't. First, its mention seems to elicit a much happier response. "Pairing? Ugh, no thanks." But when we talk about mob programming, it's more like "Hey, that sounds like fun."

Mob programming isn't pairing in that you don't subdivide your work. Multiple work streams creates no end of overhead, whether they're done by multiple pairs or multiple solo developers. You must coordinate, lest you step on each others' toes. Some examples: You need standups to coordinate each day, you need to ensure code gets reviewed (pull requests nowadays, most typically), you need to review others' code to ensure it's something you're willing to accept, you end up living in merge hell at times.

With mob programming, the amount of WIP is one. The whole team focuses on building one thing, which ensures that everyone contributes to a design and everyone agrees that the solution's code is understandable and maintainable.

## Why people love to mob

We regularly hear that mob sessions were a lot of fun, the time flew by, and they resulted in a better solution. We've met people who initially resisted mob programming but ended up loving it after a couple weeks.

No one thing appeals to everyone; some people don't even like chocolate. But mob programming seems to excite most people, particularly when they've been involved in a well-run mob session.

We think people love to mob because it's engaging, it's productive, it's social, and it's not overly intimate like pairing.

## Why the two rules work

The [two rules of mob programming](https://www.ranorex.com/blog/two-rules-mobbing-success/) say that the driver rotates on a short timer (5 minutes works well) and that you use [strong-style pairing](https://llewellynfalco.blogspot.com/2014/06/llewellyns-strong-style-pairing.html), where the driver listens to the navigators and cannot choose direction.

Rapid rotations keep mob sessions engaging and lively. It's also hard for you to snooze if you know you'll be driving shortly.

Strong-style pairing and short driver stints means no one person can easily dominate the session.

Strong-style pairing and short driver stints also reduce your fear factor: For one, you're only in the driver seat five minutes before someone relieves you. For two, you're not expected to have the answers as the driver. Your job is to translate directions into code. Even if you're a programming novice, you'll quickly get better at that translation.

## Why mob programming is great for remote development

When COVID-19 impacted software developers worldwide in March 2020, you might have found yourself suddenly in a world of isolation. For many, that isolation has proven to be difficult; as humans, we need social interaction. Popping into a Zoom meeting every once in a while during your day isn't enough.

Mob programming allows you to interact with your team throughout the day. You get to socialize and be productive at the same time.

Mob programming also allows you to work comfortably and effectively despite being remote, by use of a technique known as *git handover*. When it's your turn as driver, you share your screen and quickly pull the code from a WIP branch. When your five minutes is up, you push up your changes rapidly using a tool that supports git handovers.

If you like your IDE, you get to keep your IDE, along with your OS, your shell, your keyboard settings, and everything that you've configured to help you be comfortable. What more could you want?

