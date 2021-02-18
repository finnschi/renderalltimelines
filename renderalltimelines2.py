#!/usr/bin/env python

from python_get_resolve import GetResolve
import sys
import time


def AddTimelineToRender(project, timeline, presetName):
    project.SetCurrentTimeline(timeline)
    project.LoadRenderPreset(presetName)

    project.SetRenderSettings({"SelectAllFrames": 1})
    return project.AddRenderJob()


def RenderAllTimelines(resolve, presetName):
    projectManager = resolve.GetProjectManager()
    project = projectManager.GetCurrentProject()
    if not project:
        return False

    resolve.OpenPage("Deliver")
    timelineCount = project.GetTimelineCount()

    for index in range(0, int(timelineCount)):
        if not AddTimelineToRender(project, project.GetTimelineByIndex(index + 1), presetName):
            return False
    return project.StartRendering()


def IsRenderingInProgress(resolve):
    projectManager = resolve.GetProjectManager()
    project = projectManager.GetCurrentProject()
    if not project:
        return False

    return project.IsRenderingInProgress()


def WaitForRenderingCompletion(resolve):
    while IsRenderingInProgress(resolve):
        time.sleep(1)
    return

def DeleteAllRenderJobs(resolve):
    projectManager = resolve.GetProjectManager()
    project = projectManager.GetCurrentProject()
    project.DeleteAllRenderJobs()
    return


# Inputs:
# - preset name for rendering

if len(sys.argv) < 1:
    print(
        "input parameters for scripts are [render preset name]")
    sys.exit()

renderPresetName = sys.argv[1]

# Get currently open project
resolve = GetResolve()


if not RenderAllTimelines(resolve, renderPresetName):
    print("Unable to set all timelines for rendering")
    sys.exit()

WaitForRenderingCompletion(resolve)

DeleteAllRenderJobs(resolve)

print("Rendering is completed.")