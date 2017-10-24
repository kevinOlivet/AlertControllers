# AlertControllers
Custom AlertControllers for reuse.

This is a collection of various AlertControllers that have been and will be customized.
For when you want more than just a grey box :)

#AlertCustomProtocol

This project uses a protocol called Modal to programmatically present a custom alertController.
It's a subclass of UIView and adopts my Modal protocol.
Most interesting for me is that the functionality of presenting is in the Modal extension.
I've been interested in how Protocol Oriented Programming would work and this is a good example.

#AlertCustomVC

This project shows a easy way to make a custom alertView.
All the layout is done in the storyboard.
The "alert" is actually just presented using animation and addSubview.

I will be simple to highly customize the design and actions of the alert.

#AlertCustomBlur

This project implements a custom alert using a blurry pop up animation with UIVisualEffects.

It creates a simple popup animation that also blurs the background with an animated UIVisualEffectView.

This is an adaptation from a video tutorial located here: https://youtu.be/CXvOS6hYADc


