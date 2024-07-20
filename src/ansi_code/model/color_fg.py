from dataclasses import dataclass


@dataclass(frozen=True)
class ColorFG:
    """ANSI color palette 0-7 to be mixed with AnsiColorSelector
    for foreground (30-37), background (40-47) and other combinations.
    """

    BLACK = "\033[38;5;0m"
    RED = "\033[38;5;1m"
    GREEN = "\033[38;5;2m"
    YELLOW = "\033[38;5;3m"
    BLUE = "\033[38;5;4m"
    MAGENTA = "\033[38;5;5m"
    CYAN = "\033[38;5;6m"
    WHITE = "\033[38;5;7m"
    DEFAULT = "\033[0m"
