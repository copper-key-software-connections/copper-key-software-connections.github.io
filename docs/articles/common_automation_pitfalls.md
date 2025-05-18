---
created: 2025-05-14T11:05
updated: 2025-05-18T18:10
---
# Common Automation Pitfalls

Originally, this whole article was just going to be about my own discovery when attempting to do something I really should have thought about, asked about, and done better research into first. 
That story is present in this section below. 

However, I reminded myself that there are many other common issues when trying to automate processes with software (cause ain't no one buying their own personal robot yet![^robots]), so I wanted to do some quick research and make sure I present a full picture of what you should be aware of when thinking about the term "automation" and what it could mean for your personal and business life.

## To Use or to Not Use Third-Party Tools


One time I was helping someone learn to use Zapier. I began the conversation by asking them what is something they would like to automate using their apps. They said they would like to mirror cards from one Trello board to another board whenever a certain member was added to the card. Zapier has some capability similar to this, and there were a few follow up questions. I could’ve asked to truly figure out what they needed, but ultimately I spent a little bit of time trying to figure out how to best do this in Zapier.

However, it turns out that Trello has built in automations in its own app/website. And, because it is integrated into Trello itself, it has much more functionality and automation possibilities than Zapier could realistically ever hope to match. 

This isn’t saying that Zapier isn’t a good tool; it’s just a reminder to myself that we need to fully understand the purposes, strengths, and weaknesses of our tools to make the most of them. In this case, I think Zapier should be investigate when you are attempting to automate a process that is either:
1. Within a single service or application, but that service has no automation capabilities,
2. Across two or more services or apps, but the connections you need doesn’t exist in the “integrations” of any of the apps/services you are trying to link together;
3. Within a single service, but the automation capabilities in that service don’t do exactly what you need (maybe you need to reformat a date, for example); this one is unlikely. 

[Someone on Reddit](https://www.reddit.com/r/automation/comments/1e7ggsu/comment/lgclhpj) seems to have similar thoughts on this.

Similar to some of the thoughts below, make sure to think through exactly what you want to happen. You *can* use an available LLM (such as ChatGPT) to list out what it believes (based on what it's read) are the best solutions, but I've had it miss the mark when coming up with ideas and I had to redo my plans later. Just be careful and use it for ideas, don't take it at face value.

## Think about the process FIRST!

Sometimes, we try to streamline processes that we don't really need to be doing in the first place. Before you make plans or take steps to automate, think about if that process (or the output of the process) is necessary for your true goals in the first place.

One common example of this situation is someone low on the [ladder](https://en.wikipedia.org/wiki/Career_ladder) in a large corporation will be tasked with regularly creating a certain report of information for a higher-up. 
For this example, assume that creating this report is very time-consuming, and therefore, automating it's creation may appear very desirable. 

This report may be needed for a number of valid reasons, but sometimes the only reason is just "I told you to do this because we've been doing this for years"... </br>
From any viewpoint, this is a bad reason, but if you were just assigned this by your boss (or were told to do so by some business or personal coach), would you think to question the necessity of the report?
So, believing it to be necessary, our lowly worker realizes after the 2nd time making the report that there may be a way to automate the report's creation (even if only in part), and begins attempts to set up the automatic process (perhaps with or without their superior's approval...). 
By the end, they've saved themselves a full day of work every month! Let's assume it only cost 1 full work week to automate and requires very minimal changes over its life, so by the 5th month of using the automation, it has made a positive return on the upfront investment cost.
Awesome!

But, what if the employee **had** questioned the need for the report? 
Well, for one, they risk losing social capital with their superior, so that is a hard choice to go forward with. 
However, if they actually did go through with it and the superior was open to change and ideas, they could together determine (through a little investigation) that either:
1. The report is actually useful to many people and needs to be made; but doing so may open the door to having it automated, as that means it can be made more often at less expense to the organization. 
2. The report is useful to only a few people, and some parts can be removed, lessening the burden of manual creation, but also likely making automation even easier. 
3. The report is useful to no one, meaning its creation can be removed from the organization's processes altogether.

I feel that in a lot of circumstances, we humans can be distracted by the shiny technology and jump straight to "Oh, this would make how I do XYZ so much easier/faster/cheaper!"
but don't take the time to wonder if we even need to do that XYZ thing *at all*.

Specifically for reports, maybe your report just sucks and that's why no one uses it. ¯\_(ツ)_/¯
If that's the case, try reading [this article](https://stephanieevergreen.com/why-no-one-is-reading-your-report/).

## For customer-centric processes...
Be very careful about making things harder on the customer or driving them away in some other way.
You may be interested in automating client onboarding, removing the need for one of your employees to talk to people to get details. 
However, some people still prefer talking over the phone, so I would advise always having that as a fallback, even if you do make it harder. 

If you have a way for customers to get help from your company, like through a "complaints" or "troubleshooting" hotline, please for the love of all that is good in the world, do not replace that with an AI-powered chatbot without doing extensive proofing on its usefulness. In my experience, those things are basically useless in the edge cases I end up having to ask about (because they are not documented typically) and really only help if you know what to ask already or the bot actually asks clarifying questions. You could probably get this to work, but please be careful. 

One more note on AI (Artificial Intelligence): there is a growing portion of the population becoming disillusioned to the notion that "AI will change everything and make it all better" (which realistically shouldn't be the vibe we get from the big corporations, but it is what is is) and are becoming pretty unenthused with the usage of AI in every online space. I say this so that you are aware and mindful of your usage of AI-generated text and images throughout your branding materials and website. 
Some people will react negatively and viscerally to your usage of such material. 
However, I am not concerned about them but about the likely many times more people that see it and just become disappointed or actively ignore your brand. It's a moral and/or ethical thing to a lot of people (see a bunch of such topics on [Wikipedia](https://en.wikipedia.org/wiki/Ethics_of_artificial_intelligence)). I would advise you keep this in mind. The markets seem to be an amalgamation of a bunch of rapidly changing viewpoints. Who'd have thunk?

## Consider the non-monetary value

"Cheaper" doesn't necessarily mean "better", even for the smallest of businesses. 
And this is coming from probably one of the cheapest people I know: myself. 

Well, actually, my penchant for worrying about others before myself may make me more ["frugal" than "cheap"](https://www.reddit.com/r/Frugal/comments/17reud8/the_difference_between_being_frugal_vs_being_cheap/), but my point still stands. 
You can't just worry about the money when it comes to choosing which software to use for something. 

Assuming your business is profitable and doing more than ~$100/week, 
If you were looking at two different client relationship management software applications/services, and one was free and did *most* of what you needed, but the other is ~$15/month and has one feature you absolutely would use and would save you at least 5 hours per week, would it make sense to just use the free one?  
NO!
The extra 5 hours per week is more time you could either: 
1. look for or contact new clients
2. design and implement marketing strategies
3. do billing (if that's something you have to do yourself)
4. anything else your business needs to do to survive
For that software to not be worth it, you would have to equate your own pay rate to less than 
$15 / 4 / 5  = $0.75/hour![^units]
Don't undersell yourself like that!
You're worth *at least* $3.50 per hour. 😬

On the other hand, sometimes even free software may be too "time-expensive" for you to really get any "cost-savings" just because it was free.
This is due to the cost of switching software if you ever do find something that matches your need quite well. 
If you've been using a free or cheap software that's warped your desired workflow into one you don't like, you may face more "change inertia" in switching to a new software than if you had just kept whatever manual process you originally had. 

So, if you are considering a software, I would not only consider the time and effort of switching to the new system, but also the cost of switching away should it not work out or you find something better soon after. In the modern era, this is likely not that big of an expense, but it could be!

## Sources
[Information Week - Common Pitfalls and New Challenges in IT Automation](https://www.informationweek.com/it-leadership/common-pitfalls-and-new-challenges-in-it-automation)
[Reddit - How do businesses choose what automation tool or services they're going to use?](https://www.reddit.com/r/automation/comments/1e7ggsu/how_do_businesses_choose_what_automation_tool_or/)
[RoboSource - 13 Automation Pitfalls to Avoid](https://robosource.us/13-automation-pitfalls-to-avoid/)
Probably others that I forgot to record when reading for this over several days....
Just google "business automation pitfalls"

## Footnotes
[^robots]: Since [Elon Musk has been harking on it as the "next big thing"](https://www.businessinsider.com/elon-musk-personal-robots-warns-terminator-style-risks-saudi-robotaxi-2025-5), that means that it is [at *least* a decade away](https://dawnproject.com/the-history-of-tesla-full-self-driving/). This is in part a jest...
However, I fully expect that [China will overtake the U.S. in terms of humanoid robot production](https://www.reuters.com/world/china/chinas-ai-powered-humanoid-robots-aim-transform-manufacturing-2025-05-13/) since they seem to have embraced that in light of the current (2025) trade war. 
Although, [maybe not...](https://www.dailymail.co.uk/news/article-14679063/moment-humanoid-robot-attacks-handlers.html). This seems to be more of a malfunction, in my opinion, not conscious effort to "escape" and "attack", but new outlets gotta click-bait, I guess...
[^units]:: For completeness, the full calculation is :
$$ \frac{\frac{$15}{month}}{ 4 \frac{weeks}{month} \times 5 \frac{hours}{week}} = $0.75/hour$$
