---
title: Stop using the viewport meta tag (until you know how to use it)
date: 2012-10-04
---

In the early years, when the smartphones came to Earth, they knew the Internet wasn't prepared for them&hellip; so they expected every website to be around 1000px width (980px on the iPhone) and zoom out the website to fit into the screen. And so the <code class="code">&lt;meta name="viewport"&gt;</code> was created, basically to tell those smart dudes that your website was prepared for them.

Nowadays, some popular front-end frameworks like HTML5 Boilerplate, Twitter Bootstrap and other pre-made templates include this meta tag by default &ndash;which is great for responsive web design, but very harmful for "traditional" web design. This is how it works.

<h3>Briefly</h3>
If you are not coding a responsive site, just <strong>don't</strong> use any meta viewport. If you are coding a responsive website, all you need to write is

<code>&lt;meta name=&quot;viewport&quot;
content=&quot;width=device-width, initial-scale=1&quot;&gt;</code>

Any additional parameters in the content attribute usually screw up user's experience.

EDIT: As <a href="http://bradfrostweb.com/">Brad Frost</a> correctly <a href="https://twitter.com/brad_frost/statuses/253990175359778816">pointed out</a>, you should also use the viewport meta if you are building a dedicated mobile site, so it's not just for responsive sites.

<h3>Device-width</h3>
The most important part of the viewport tag is telling the browser what's the width of your website. If we code it like this:

<code>&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width&quot;&gt;</code>

we'll be telling to the browser "my website adapts to your width". If we use this parameter on a non-responsive site, the website will zoom to the top left corner, forcing the users to zoom out (just to understand where they are) and zoom in to the see the details. Not the best user experience, right?

<h3>Initial-scale</h3>
Since the browser tends to scale the website, this parameter sets the initial zoom level, which usually means that 1 CSS pixel is equal to 1 viewport pixel (which is not always the same as 1 physical pixel). A responsive site should work without this parameter, but it might help fixing some issues with certain browsers when changing the orientation mode, or preventing a default zooming.

<h3>Maximum-scale</h3>
Setting a maximum scale means setting a maximum zoom. On a website where the access to the information is the top priority (most, if not all, websites), setting a maximum-scale=1 won't allow the user to zoom. This might seem unimportant if you have a responsive website, but there are lots of cases when the user might need to zoom: small body font (at least, for the user's needs), checking some details in a photograph, etc. Don't trigger an accessibility issue just for aesthetic reasons.

<h3>User-scalable=no</h3>
This parameter removes the ability to zoom in or zoom out, and it's even worse than maximum-scale. If there's a really special reason to use it (e.g., you are coding a web app and need to avoid zooming in form inputs), try adding and removing it with JavaScript, just for the action you want to fix. Anyway, remember that smartphone users are used to zoom in and out any website, so having to zoom out after filling a form might be a default behavior and you don't probably have to fix it.

<h3>Combo breaker</h3>
Now picture the combo-breaker: a non responsive website (fixed layout, about 960px width) with a viewport tag like

<code>&lt;meta name=&quot;viewport&quot;
content=&quot;width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no&quot;&gt;</code>

Congratulations, your website zoomed to the first 300px or 400px of the top left corner, the user can't zoom out and the only way to access the information is by patiently viewing the website in pieces of 300px width. A whole experience screwed up by an extra tag.

<h3>Just don't use the viewport tag in vain</h3>
Lots of non-responsive websites are using the viewport tag without noticing how harmful it can be for the users, or they are using some of the viewport parameters "just because somebody copied and pasted them there". Unfortunately, this is not an isolated case; as web designers and developers, we tend to rely too much on frameworks and templates, sometimes adding lots of extra code the website will use for nothing, and sometimes adding complex configuration lines the project doesn't really need. It's time to recover control over our websites: never add a line of code you don't really understand, never add a line of code you don't really need.
