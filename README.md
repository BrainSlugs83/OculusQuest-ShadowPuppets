# OculusQuest Hand-Tracking ShadowPuppets Demo
This is a quick toy I threw together for the Oculus Quest in Unity to play with the new experimental hand tracking feature.

Built with Unity 2019.2.17f1 / Oculus Integration 12.0 (Modified)

### Reddit:
 Relevant post with video: https://www.reddit.com/r/OculusQuest/comments/edppj1/shadow_puppet_test/

> It took some weird hacking to get the hands to stay visible when they're touching (normally they just disappear), but leaving them visible makes them *really* glitchy. Unfortunately the confidence level we get back from the SDK is boolean (technically it's an enum, but it only has two states... -- normally I would expect a float between 0 and 1 to indicate the confidence level), so anyway, I kind of have to guess a little bit when I interpolate the positions under low confidence situations, but whatever. It kind of works. 😅

And
> wait wait wait how is it still tracking even when its occluding?
>> With very low confidence. 😅

### List of Modifications

The main modifications I made were to `OVRSkeleton.cs`, and `OVRCameraRig.cs` (search for `Lerp` in those two), and in `OVRMeshRenderer.cs` (see the `Update` method).

### Notes

Anyway, since there was interest in the code, I'm dumping it up here as CC0, but keep in mind a couple of things:

  1. This code contains edits to the OVR SDK, and it may not work in a future release (not to mention, this is probably not a good practice).

  2. The code is a bit of a dumpster fire.  Apologies. -- Also the project may take a while to open the first time, as it's set to convert itself to Android when you first open it...

  3. Even with my changes, it's still very fucking glitchy (check out the APK first -- it's not awesome -- but maybe someone can take what I did and improve further?).

  4. Nothing is this project has really been optimized for mobile, it was just an experiment.  That being said, it hits 72fps on the Quest for me, but I wouldn't be surprised if the CPU/GPU were both in 4/4 the whole time. 😅

  5. Oh yeah... I broke the hand material somehow? 🤐 -- So I replaced it with a regular white one -- don't do that, it's bad because your hands don't turn blue when you make the Oculus gesture. (It still works, and the icon shows up, but it's annoying.)

### "License"
Any changes that I made to the code I release under the CC0 (where possible), otherwise please refer to the original header text in the source code (which contains a link to the Oculus / Facebook developer agreement).

I would like to note that if you use this code in your own project, or you learn anything useful from it, I'd love a shout out (even a "special thanks", or you know free review key... or a big sack of money, or whatever's convenient. 😉).

But yeah, as this is being released as CC0, none of that is legally required, it's just a nice way to say thanks. 🙂

Cheers 🍻
--Mikey