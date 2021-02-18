"""
Simple script to print out possible export formats and codecs, great to quickly check if API is working and to get names for
the Renderscript.
"""


from python_get_resolve import GetResolve
from pprint import pprint
resolve = GetResolve()
projectManager = resolve.GetProjectManager()
project = projectManager.GetCurrentProject()
pprint(project.GetRenderFormats())
pprint(project.GetRenderCodecs('mov'))

