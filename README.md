# WidgetSample

After solving my last SwiftUI [issue](https://gist.github.com/below/a5008d74b7786233f6442e81ecfe0c5c), here is my next issue.

## Primary Objective

My Widget displays pictures from a list. If I load in all the pictures when setting up the timeline, I run into a memory issue (`EXC_RESOURCE RESOURCE_TYPE_MEMORY`), because Widgets have a strict limit on how much memory they can use.

## My Solution

Instead of storing a `UIImage` in my timeline entry, I store the URL to the picture, and load it with a `.task` attached to the view.

This works, when the view is displayed in the app, and is also shown in the Preview window.

## The Problem

The image is apparently loaded, but not updated for the Widget. Not if running in the simulator or on device, or in the Preview canvas.

## The Question

Obviously: Am I doing it wrong? Do I need to update my timeline more conservatively? Can I load the pictures on demand? Is there a different way of doing this?
