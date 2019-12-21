# OculusQuest Hand-Tracking ShadowPuppets Demo
A quick toy I threw together for the Oculus Quest in Unity to play with the new experimental hand tracking feature.

Relevant reddit post with video: https://www.reddit.com/r/OculusQuest/comments/edppj1/shadow_puppet_test/

> It took some weird hacking to get the hands to stay visible when they're touching (normally they just disappear), but leaving them visible makes them *really* glitchy. Unfortunately the confidence level we get back from the SDK is boolean (technically it's an enum, but it only has two states... -- normally I would expect a float between 0 and 1 to indicate the confidence level), so anyway, I kind of have to guess a little bit when I interpolate the positions under low confidence situations, but whatever. It kind of works. 😅

Since there was interest in the code, I'm dumping it up here as CC0, but keep in mind a couple of things:

1.) At this time Oculus is not accepting official 3rd party apps/games with hand tracking into the store (the feature is still experimental, but it's worth getting your toes wet anyway, you can disable the feature and enable it later when they start accepting?)
2.) This code contains edits to the OVR SDK, and it may not work in a future release (not to mention, this is probably not a good practice).
3.) The quality of the code (including but not limited to my changes 😜) is pretty abysmal.  Apologies.
4.) Even with my changes, it's pretty fucking glitchy (check out the APK first -- it's not as magic as it looks).
5.) Nothing is this project has really been optimized for mobile, it was just an experiment.  That being said, it hits 72fps for me, but I wouldn't be surprised if the CPU/GPU were both in 4/4 the whole time.

If you use this code in your own project, or you learn anything useful from it, I'd love a shoutout (even a "special thanks", or free review key or whatever). -- However, as this is being released as CC0, none of that is required, just a nice to have.

Cheers 🍻
--Mikey
