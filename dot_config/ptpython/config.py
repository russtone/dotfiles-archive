from __future__ import unicode_literals

from prompt_toolkit.styles import Style

__all__ = ("configure",)

def configure(repl):
    repl.install_ui_colorscheme("xcode", Style.from_dict(_custom_ui_colorscheme))
    repl.use_ui_colorscheme("xcode")


# Custom colorscheme for the UI. See `ptpython/layout.py` and
# `ptpython/style.py` for all possible tokens.
_custom_ui_colorscheme = {
    "pygments.literal.string": "#EF8775", # strings
    "pygments.keyword": "bold #EE83B1", # keywords
    "pygments.name.namespace": "nobold #DFDFE0", # imports
    "pygments.name.builtin": "#D4BDFA",
    "pygments.operator": "#EE83B1",
    "pygments.operator.word": "bold #EE83B1",
    "pygments.literal.number": "#D3C584",
    "pygments.name.function": "nobold #67AFC9",
    "pygments.name.class": "nobold #88DDFB",
}
